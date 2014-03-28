function initialize() {
  initializeMap($('.map-canvas'));
}

function initializeMap(mapCanvas){
  var maps = {};
  for (var i=0; i<mapCanvas.length;i++){
    var longitude = $(mapCanvas[i]).data("long");
    var latitude = $(mapCanvas[i]).data("lat");
    var id = $(mapCanvas[i]).data("id");
    var mapOptions = {
      center: new google.maps.LatLng(latitude, longitude),
      zoom: 15
     };
    maps['modal' + id] = new google.maps.Map(mapCanvas[i],
        mapOptions);


    $('#modal'+id).on('shown.bs.modal', function (event) {
       console.log("resizing the map");
       google.maps.event.trigger(maps[event.currentTarget.id], "resize");
    });
    var contentString ='<div id="info">' +
    '<a href="https://maps.google.com"/>Get Directions</a>' +
    '</div>';

    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });

    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(latitude, longitude),
      map: maps[id],
      clickable: true
    });
    google.maps.event.addListener(marker, 'click', function () {
      infowindow.open(maps[id],marker);
    });
    }


} 
google.maps.event.addDomListener(window, 'load', initialize);

