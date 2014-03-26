function initialize() {
  initializeMap($('.map-canvas'));
}

function initializeMap(mapCanvas){
  for (var i=0; i<mapCanvas.length;i++){
  var longitude = $(mapCanvas[i]).data("long");
  var latitude = $(mapCanvas[i]).data("lat");
  var mapOptions = {
    center: new google.maps.LatLng(latitude, longitude),
    zoom: 15
   };
  var map = new google.maps.Map(mapCanvas[i],
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
}



  google.maps.event.addDomListener(window, 'load', initialize);