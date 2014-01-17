(function(){
  document.addEventListener("DOMContentLoaded", function(){
    //Helpful Drawing functions:
    //Finding the radius:
    var getRadius = function( orgX, orgY){
      if(orgX > orgY){
        return orgY;
      }
      return orgX;
    };

    //Converting Radians to Cartesian for drawing circles
    var radToCart = function( radiusLength, radians){
      var coords = {};
      coords.x = radiusLength/2 * Math.cos(radians/2);
      coords.y = radiusLength/2 * Math.sin(radians/2);
      return coords;
    };
    //Get Canvas & Context
    var canvas = document.querySelector("#yea_vs_nay");
    var context = canvas.getContext("2d");
    //Scrape Basic Variables from the page
    var x = canvas.width/2;
    var y = canvas.height/2;
    var radius = getRadius(x, y);

    var yeaEl = document.querySelector("#yea_count");
    var nayEl = document.querySelector("#nay_count");
    var yeas = parseInt(yeaEl.innerHTML, 10);
    var nays = parseInt(nayEl.innerHTML, 10);
    var votes = yeas + nays;
    if (votes === 0) {
      votes = 1;
    }

    var yeaP = Math.round((yeas/votes) * 100);
    var totalP = 100 - yeaP;

    var yeaInRad = (yeas/votes) * 2 * Math.PI;
    var nayInRad = (nays/votes) * 2 * Math.PI;

    var startDeg = 0;
    var endDeg = yeaInRad;
    var counterClockwise = false;

    //Draw Graph
    context.beginPath();
    context.moveTo(x, y);
    context.arc(x, y, radius, startDeg, endDeg, counterClockwise);
    context.closePath();
    context.fillStyle = "purple";
    context.fill();

    startDeg = endDeg;
    endDeg = 0;
    context.beginPath();
    context.moveTo(x, y);

    context.arc(x, y, radius, startDeg, endDeg, counterClockwise);
    context.closePath();
    context.fillStyle = "yellow";
    context.fill();

  });
})();