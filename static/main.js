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
    // $.get("/ping", function(data){
    //     if(data.error == "true"){
    //         $("#results").prepend("<div class='alert alert-danger'><strong>Error!</strong> "+ data.message +"</div>");
    //     }
    // }, "json")
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

    $("#submitReview").click(function(){
      submitReview();
    })

    // $.get("/ping", function(data){
    //     if(data.error == "true"){
    //         $("#results").prepend("<div class='alert alert-danger'><strong>Error!</strong> "+ data.message +"</div>");
    //     }
    // }, "json")
    $("#login").click(function(){
      $.post("/login", {username: $("#username").val(), password: $("#password").val()})
        .done(function(data){
          if(data.result == "failed"){
            console.log(data)
            $("#result").text("Failed to login! " + data.message);
          } else {
            console.log(data)
            $("#result").text("Logged in as: " + data.username + ":" + data.password)
          }
        });
    });

    function submitReview() {
      $.post("/addreview", {title: $("#Title").val(), rating: $("#Rating").val(), description: $("#ReviewDescription").val()})
      .done(function(data){
          console.log(data);
      });
    }
})
