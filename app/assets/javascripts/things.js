function initialize() {
  var longitude = $("#map-canvas").data("long")
  var latitude = $("#map-canvas").data("lat")
  var mapOptions = {
    center: new google.maps.LatLng(latitude, longitude),
    zoom: 15
   };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);