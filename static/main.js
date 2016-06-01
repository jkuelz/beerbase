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

    $.get("/user?id="+$.urlParam('id'), function(data){
      var id = $.urlParam('id');
        $("#firstQuery").append(data);
    }, "html")

    // $.get("/login?user="+$.urlParam('user')+"&pass="+$.urlParam('pass'), function(data){
    //   var user = $.urlParam('user');
    //   var pass = $.urlParam('pass')
    //     $("#firstQuery").append(data);
    // }, "html")

    $.get("/query2", function(data){
        $("#secondQuery").append(data);
    }, "data/Beer.sql")

    $.get("/query3", function(data){
        $("#thirdQuery").append(data);
    }, "html")


})
