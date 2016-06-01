
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

    $.get("/query1?id="+$.urlParam('id'), function(data){
      var id = $.urlParam('id');
      console.log(id);
        $("#firstQuery").append(data);
    }, "html")

    $.get("/query2", function(data){
        $("#secondQuery").append(data);
    }, "html")

    $.get("/query3", function(data){
        $("#thirdQuery").append(data);
    }, "html")


})
