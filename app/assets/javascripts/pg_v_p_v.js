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
    if(Math.sqrt(pvpv) == Math.floor(Math.sqrt(pvpv))){
      var verticals = Math.sqrt(pvpv) - 1;
    }
    else{
      var verticals = Math.floor(Math.sqrt(pvpv));
    };

    var horizontals = Math.floor(Math.sqrt(pvpv + verticals)) - 1;
    console.log(verticals, horizontals);

    // How Many Boxes to fill
    // How to Draw in a box
  //Simple-ish Variables to start
  //How to draw all the things
})
})();