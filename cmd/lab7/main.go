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
	// Example for binding JSON ({"user": "manu", "password": "123"})
	    router.POST("/login", func(c *gin.Context) {
				email := c.PostForm("email")
				password := c.PostForm("password")

				if hasIllegalSyntax(email) || hasIllegalSyntax(password) {
					c.JSON(http.StatusOK, gin.H{"result": "failed", "message": "Don't use syntax that isn't allowed"})
					return
				}
				c.JSON(http.StatusOK, gin.H{"result": "worked", "message": "worked"})
	    })
	// router.POST("/addreview", func(c *gin.Context) {
	// 		user := c.PostForm("ReviewerID")
	// 		beer := c.PostForm("BeerID")
	// 		rating := c.PostForm("Rating")
	// 		description := c.PostForm("ReviewDescription")
	// 		rows, err := db.Query("INSERT INTO review (ReviewerID, BeerID, Rating, ReviewDescription) VALUES(1, $1, $2, $3)", user, beer, rating, description)
	// 		if errd != nil {
	// 			c.AbortWithError("Error opening database: %q", errd)
	// 			return
	// 		}
	//
	// 		c.JSON(200, gin.H{
	// 				"status":  "posted",
	// 				"message": message,
	// 				"beer":    beer,
	// 				"user": user,
	// 				"rating": rating,
	// 		})
	// })


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
func hasIllegalSyntax(s string) bool {
	s = strings.ToUpper(s)
	return strings.Contains(s, "INSERT") || strings.Contains(s, "DELETE") || strings.Contains(s, "CREATE") || strings.Contains(s, "DROP") || strings.Contains(s, "UPDATE") || strings.Contains(s, "ALTER")
}
