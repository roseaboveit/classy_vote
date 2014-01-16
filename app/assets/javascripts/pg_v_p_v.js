(function(){
document.addEventListener("DOMContentLoaded", function(){
  //Get Canvas
  var canvas = document.querySelector("#pageviews_per_visit");
  var context = canvas.getContext("2d");
  //Scrape basic variables from page
  var pgVEl = document.querySelector("#page_views");
  var vEl = document.querySelector("#total_visits");
  var pvpvEl = document.querySelector("#pvpv");
  var pgV = parseInt(pgVEl.innerHTML, 10);
  var v = parseInt(vEl.innerHTML, 10);
  var pvpv = parseInt(pvpvEl.innerHTML, 10);

  //Helpful Methods
    // How Many Verticals & Horizontals
    // How Many Boxes to fill
    // How to Draw in a box
  //Simple-ish Variables to start
  //How to draw all the things
})
})();