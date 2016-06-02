router.GET("/ping", func(c *gin.Context) {
	ping := db.Ping()
	if ping != nil {
		// our site can't handle http status codes, but I'll still put them in cause why not
		c.JSON(http.StatusOK, gin.H{"error": "true", "message": "db was not created. Check your DATABASE_URL"})
	} else {
		c.JSON(http.StatusOK, gin.H{"error": "false", "message": "db created"})
	}
})

router.GET("/user", func(c *gin.Context) {
	q := c.Request.URL.Query()
	userid := q["id"][0]
	// if userid == 0 {
	// 	c.Data(http.StatusOK, "text/html", []byte("JULIAN, USER ID, please"))
	//
	// }
	table := "<table class='table'>"+userid+"<thead><tr>"
	// put your query here
	rows, err := db.Query("SELECT * FROM usert WHERE id = " + userid) // <--- EDIT THIS LINE
	if err != nil {
		// careful about returning errors to the user!
		c.AbortWithError(http.StatusInternalServerError, err)
	}
	// foreach loop over rows.Columns, using value
	cols, _ := rows.Columns()
	if len(cols) == 0 {
		c.AbortWithStatus(http.StatusNoContent)
	}
	// for _, value := range cols {
	// 	table += "<th class='text-center'>" + value + "</th>"
	// }
	// once you've added all the columns in, close the header
	table += "</thead><tbody>"
	// declare all your RETURNED columns here
	var id int      // <--- EDIT THESE LINES
	var firstName string
	var lastName string
	var birthdate string
	var gender string
	var biography string
	var email string

	for rows.Next() {
		// assign each of them, in order, to the parameters of rows.Scan.
		// preface each variable with &
		rows.Scan(&id,&firstName,&lastName,&birthdate,&gender,&biography,&email) // <--- EDIT THIS LINE
		// can't combine ints and strings in Go. Use strconv.Itoa(int) instead
		// table += "<tr><td>" + strconv.Itoa(id) + "</td><td>"+ firstName +"</td><td>"+ lastName +"</td><td>"+ birthdate +"</td><td>"+ gender +"</td><td>"+ biography +"</td><td>"+ email +"</td></tr>" // <--- EDIT THIS LINE
	}
	table += "<tr><td>id:"+strconv.Itoa(id)+" Name: "+firstName + " " + lastName+" was born on " +birthdate+ "</td></tr>"
	// finally, close out the body and table
	table += "</tbody></table>"
	c.Data(http.StatusOK, "text/html", []byte(table))
})

router.GET("/query2", func(c *gin.Context) {
	table := "<table class='table'><thead><tr>"
	// put your query here
	rows, err := db.Query("SELECT BeerID, MAX (avg_rating) FROM (SELECT BeerID, AVG (rating) AS avg_rating FROM Review) AS topBeer GROUP BY BeerID") // <--- EDIT THIS LINE
	if err != nil {
		// careful about returning errors to the user!
		c.AbortWithError(http.StatusInternalServerError, err)
	}
	// foreach loop over rows.Columns, using value
	cols, _ := rows.Columns()
	if len(cols) == 0 {
		c.AbortWithStatus(http.StatusNoContent)
	}
	for _, value := range cols {
		table += "<th class='text-center'>" + value + "</th>"
	}
	// once you've added all the columns in, close the header
	table += "</thead><tbody>"
	// RETURNED columns
	var Name string
	var BeerDescription string

	// assign each of them, in order, to the parameters of rows.Scan().
	for rows.Next() {
		 rows.Scan(&Name,&BeerDescription) // put columns here prefaced with &
		table += "<tr><td>"+Name+"</td></tr><tr><td>"+BeerDescription+"</td></tr>" // <--- EDIT THIS LINE
	}
	// finally, close out the body and table
	table += "</tbody></table>"
	c.Data(http.StatusOK, "text/html", []byte(table))
})

router.GET("/query3", func(c *gin.Context) {
	table := "<table class='table'><thead><tr>"
	// put your query here
	rows, err := db.Query("SELECT * FROM table1") // <--- EDIT THIS LINE
	if err != nil {
		// careful about returning errors to the user!
		c.AbortWithError(http.StatusInternalServerError, err)
	}
	// foreach loop over rows.Columns, using value
	cols, _ := rows.Columns()
	if len(cols) == 0 {
		c.AbortWithStatus(http.StatusNoContent)
	}
	for _, value := range cols {
		table += "<th class='text-center'>" + value + "</th>"
	}
	// once you've added all the columns in, close the header
	table += "</thead><tbody>"
	// columns
	for rows.Next() {
		// rows.Scan() // put columns here prefaced with &
		table += "<tr><td></td></tr>" // <--- EDIT THIS LINE
	}
	// finally, close out the body and table
	table += "</tbody></table>"
	c.Data(http.StatusOK, "text/html", []byte(table))
})
