function initialize() {
  var longitude = $("#map-canvas").data("long")
  var latitude = $("#map-canvas").data("lat")
  var mapOptions = {
    center: new google.maps.LatLng(latitude, longitude),
    zoom: 15
   };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);

  var contentString ='<div id="info">' +
  '<a href="https://maps.google.com"/>Get Directions</a>' +
  '</div>';

  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });

  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(latitude, longitude),
    map: map,
    clickable: true 
  });
  google.maps.event.addListener(marker, 'click', function () {
    infowindow.open(map,marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);
