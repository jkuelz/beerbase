// stack
    $.urlParam = function(name){
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results==null){
           return null;
        }
        else{
           return results[1] || 0;
        }
    }
$(function(){
    $.get("/ping", function(data){
        if(data.error == "true"){
            $("#results").prepend("<div class='alert alert-danger'><strong>Error!</strong> "+ data.message +"</div>");
        }
    }, "json")
// user param
    // $.get("/user?id="+$.urlParam('id'), function(data){
    //   var id = $.urlParam('id');
    //     $("#firstQuery").append(data);
    // }, "html")

    // $.get("/login?user="+$.urlParam('user')+"&pass="+$.urlParam('pass'), function(data){
    //   var user = $.urlParam('user');
    //   var pass = $.urlParam('pass')
    //     $("#firstQuery").append(data);
    // }, "html")


    $("#submitreview").click(function(){
      // submitReview();
      $.post("/submitreview", {rating: $("#rating").val(), title: $("#title").val(), reviewDescription: $("#reviewDescription").val()})
      .done(function(data){
          console.log(data)
          // $("#listReview").prepend(data);
      })
    })

    $("#login").click(function(){
      $.post("/login", {username: $("#username").val(), password: $("#password").val()})
        .done(function(data){
          if(data.result == "failed"){
            console.log(data)
            $("#result").text("Failed to login! " + data.message);
          } else {
            $("#username").hide();
            $("#password").hide();
            $("#login").hide();
            console.log(data)
            $("#result").text("Logged in as: " + data.username)
          }
        });
    });

    // function submitReview(){
    //   $.post("/addreview", {rating: $("#rating").val(), title: $("#title").val(), description: $("#reviewDescription").val()})
    //   .done(function(data){
    //       console.log(data)
    //   })
    // }
})
