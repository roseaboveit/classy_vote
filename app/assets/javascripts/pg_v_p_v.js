(function(){
document.addEventListener("DOMContentLoaded", function(){
  //Get Canvas
  var canvas = document.querySelector("#pageviews_per_visit");
  var context = canvas.getContext("2d");
  //Scrape basic variables from page
  var pgVEl = document.querySelector("#page_views");
  var visitsEl = document.querySelector("#total_visits");
  var pvpvEl = document.querySelector("#pvpv");
  var pgV = parseInt(pgVEl.innerHTML, 10);
  var visits = parseInt(visitsEl.innerHTML, 10);
  var pvpv = parseInt(pvpvEl.innerHTML, 10);

  
  //Helpful Methods
    // How Many Verticals & Horizontals
    if (pvpv == 1){
      var verticals = 1;
    }
    else if(Math.sqrt(pvpv) == Math.floor(Math.sqrt(pvpv))){
      var verticals = Math.sqrt(pvpv) - 1;
    }
    else{
      var verticals = Math.floor(Math.sqrt(pvpv));
    };

    var horizontals = Math.floor(Math.sqrt(pvpv + verticals)) - 1;

  // Set smallWidth and smallHeight
  // set tinyWidth and tinyHeight
    console.log(canvas.width);
    var smallWidth = canvas.width/(verticals+1);
    var smallHeight = canvas.height/(horizontals+1);
    var tinyWidth = smallWidth/3;
    var tinyHeight = smallHeight/3;

  //For Each element set relX, relY, tinyX, tinyY, and draw
    //helpers
    console.log("I have gotten to the really exciting part");
    var increment_relX = function(relX){
      var placeholderX = relX;
      console.log(placeholderX, "placeholder relX");
      var relX = placeholderX + smallWidth;
      console.log(relX, "final relX");
      return relX;
    };
    var increment_relY = function(relY){
      var relY = relY + smallHeight;
      return relY;
    };
    var reset_relX = function(relX){
      var relX = 0;
      return relX;
    };
  var drawTinyRect = function(){
    var relX = 0;
    var relY = 0;
    for(var i=0; i < pvpv; i++ ){
      console.log(relX, "relX early for loop");
      if (relX === canvas.width) {
        reset_relX(relX);
        console.log(relX, "relX");
        increment_relY(relY);
        console.log(relY, "relY");
      };
      context.beginPath();
      var x = relX + tinyWidth;
      var y = relY + tinyHeight;
      context.rect(x, y, tinyWidth, tinyHeight);
      context.fill();
      relX = increment_relX(relX);
    };
  };
  drawTinyRect();
})
})();