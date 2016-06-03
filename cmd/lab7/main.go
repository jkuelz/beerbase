// by setting package as main, Go will compile this as an executable file.
// Any other package turns this into a library
package main

// These are your imports / libraries / frameworks
import (
	// this is Go's built-in sql library
	"database/sql"
	"log"
	"net/http"
	"os"
	"strings"

	// this allows us to run our web server
	"github.com/gin-gonic/gin"
	// this lets us connect to Postgres DB's
	_ "github.com/lib/pq"
)

var (
	// this is the pointer to the database we will be working with
	// this is a "global" variable (sorta kinda, but you can use it as such)
	db *sql.DB
)

type Beer struct {
  Id string
	Name string
	BeerDescription string
}

type Review struct {
	Id string
	Rating string
	ReviewDescription string
	ReviewDate string
}

type User struct {
	Id string
	Username string
	Password string
	Userid string
}

func getFeaturedBeer() []Beer {
	var beerArray []Beer
	rows, err := db.Query("Select id, name, beerdescription from beer order by random() limit 3")
	if err != nil {
		return nil
	}

	for rows.Next() {
		// for each row, we create an empty Location object

		var beer Beer

		// go can scan the columns returned from the select directly into the properties from our object
		// we need &loc.xxx so that scan can update the properties in memory (&loc.Name means address of the Name property for this instance of loc)
		err = rows.Scan(&beer.Id, &beer.Name, &beer.BeerDescription)
		if err != nil {
			return nil
		}
		// append each intermediate loc to our array
		beerArray = append(beerArray, beer)
	}
	rows.Close()

	return beerArray
}

func getReviewerAccs() []User {
	var userArray []User
	rows, err := db.Query("Select * from ReviewerAcc")
	if err != nil {
		return nil
	}

	for rows.Next() {
		// for each row, we create an empty Location object

		var user User

		// go can scan the columns returned from the select directly into the properties from our object
		// we need &loc.xxx so that scan can update the properties in memory (&loc.Name means address of the Name property for this instance of loc)
		err = rows.Scan(&user.Id, &user.Username, &user.Password, &user.Userid)
		if err != nil {
			return nil
		}
		// append each intermediate loc to our array
		userArray = append(userArray, user)
	}
	rows.Close()

	return userArray
}

func getReviews() []Review {
	var reviewsArray []Review
	rows, err := db.Query("SELECT id, rating, reviewdescription, reviewdate from Review order by ReviewDate DESC")
	if err != nil {
		return nil
	}

	for rows.Next() {
		// for each row, we create an empty Location object

		var review Review

		// go can scan the columns returned from the select directly into the properties from our object
		// we need &loc.xxx so that scan can update the properties in memory (&loc.Name means address of the Name property for this instance of loc)
		err = rows.Scan(&review.Id, &review.Rating, &review.ReviewDescription, &review.ReviewDate)
		if err != nil {
			return nil
		}
		// append each intermediate loc to our array
		reviewsArray = append(reviewsArray, review)
	}
	rows.Close()

	return reviewsArray
}

func trunArray() []Review {
	var reviewsArray = getReviews()
	var trunArray []Review = reviewsArray[1:10]
	return trunArray
}

// func beerHandler(c *gin.Context) {
// 	beerName := c.Param("id")
// 	beerDetail := getBeerDetails(beerName)
// 	context := struct {
// 		Detail Beer `json:"detail"`
//
// 	}{
// 		beerDetail,
// 	}
// 	c.JSON(200,context)
// }

func indexHandler(c *gin.Context) {
	favoriteBeers := getFeaturedBeer()
  tenReviews := trunArray()

	context := struct {
		Favorites []Beer
		Reviews []Review

	}{
		favoriteBeers,
		tenReviews,
	}
	c.HTML(http.StatusOK, "index.html", context)
}

func hasIllegalSyntax(s string) bool {
	s = strings.ToUpper(s)
	return strings.Contains(s, "INSERT") || strings.Contains(s, "DELETE") || strings.Contains(s, "CREATE") || strings.Contains(s, "DROP") || strings.Contains(s, "UPDATE") || strings.Contains(s, "ALTER")
}

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		log.Fatal("$PORT must be set")
  }
	var errd error
	// here we want to open a connection to the database using an environemnt variable.
	// This isn't the best technique, but it is the simplest one for heroku
	db, errd = sql.Open("postgres", os.Getenv("DATABASE_URL"))
	if errd != nil {
		log.Fatalf("Error opening database: %q", errd)
	}
	router := gin.New()
	router.Use(gin.Logger())
	router.LoadHTMLGlob("html/*")
	router.Static("/static", "static")

	router.GET("/", indexHandler)

	// router.GET("/", func(c *gin.Context) {
	// 	c.HTML(http.StatusOK, "index.html", nil)
	// })

	router.GET("/ping", func(c *gin.Context) {
		ping := db.Ping()
		if ping != nil {
			// our site can't handle http status codes, but I'll still put them in cause why not
			c.JSON(http.StatusOK, gin.H{"error": "true", "message": "db was not created. Contact your TA for assistance"})
		} else {
			c.JSON(http.StatusOK, gin.H{"error": "false", "message": "db created"})
		}
	})

	// Example for binding JSON ({"user": "manu", "password": "123"})
	router.POST("/login", func(c *gin.Context) {
			username := c.PostForm("username")
			password := c.PostForm("password")

			if hasIllegalSyntax(username) || hasIllegalSyntax(password) {
				c.JSON(http.StatusOK, gin.H{"result": "failed", "message": "Don't use syntax that isn't allowed"})
				return
			}

			rows, err := db.Query("SELECT ReviewerAcc.username FROM ReviewerAcc WHERE ReviewerAcc.Username = $1 AND ReviewerAcc.Password = $2;", username, password)
			if err != nil {
				c.AbortWithError(http.StatusInternalServerError, err)
				return
			}
			cols, _ := rows.Columns()
			if len(cols) == 0 {
				c.AbortWithStatus(http.StatusNoContent)
				return
			}

			rowCount := 0
			var resultUser string
			for rows.Next() {
				rows.Scan(&resultUser)
				rowCount++
			}
			if rowCount > 1 {
				c.JSON(http.StatusOK, gin.H{"result": "failed", "message": "Too many users returned!"})
				return
			}
			// quick way to check if the user logged in properly
			if rowCount == 0 {
				c.JSON(http.StatusOK, gin.H{"result": "failed", "message": "Wrong password/username!"})
				return
			}

			c.JSON(http.StatusOK, gin.H{"result": "success", "username": resultUser})

			// if resultUser == "Cameron" {
			// 	c.JSON(http.StatusOK, gin.H{"result": "success", "username": resultUser, "randomCode": rand.Int()})
			// } else {
			// 	c.JSON(http.StatusOK, gin.H{"result": "success", "username": resultUser})
			// }
	})
	router.POST("/addreview", func(c *gin.Context) {
			rating := c.PostForm("rating")
			title := c.PostForm("title")
			reviewDescription := c.PostForm("reviewDescription")
			_, err := db.Exec("INSERT INTO Review(id, ReviewerID, BeerID, Rating, Title, ReviewDescription, ReviewDate) VALUES((SELECT (MAX(ID) + 1) FROM Review), 1, 1, $1, $2, $3, (current_date)", rating, title, reviewDescription)
			if err != nil {
				c.AbortWithError(http.StatusInternalServerError, errd)
				return
			}
			c.JSON(http.StatusOK, gin.H{"result":  "success", "message": "Successfully added."})
	})


	// NO code should go after this line. it won't ever reach that point
	router.Run(":" + port)
}


/*
Example of processing a GET request

// this will run whenever someone goes to last-first-lab7.herokuapp.com/EXAMPLE
router.GET("/EXAMPLE", func(c *gin.Context) {
    // process stuff
    // run queries
    // do math
    //decide what to return
    c.JSON(http.StatusOK, gin.H{
        "key": "value"
        }) // this returns a JSON file to the requestor
    // look at https://godoc.org/github.com/gin-gonic/gin to find other return types. JSON will be the most useful for this
})

*/
