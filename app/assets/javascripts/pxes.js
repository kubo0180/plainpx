// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

function GmapInitialize() {
  var lat = parseFloat(document.getElementById("latitude").textContent);
  var lng = parseFloat(document.getElementById("longitude").textContent);
  var latlng = new google.maps.LatLng(lat, lng);

  var mapOptions = {
    center: latlng,
    zoom: 14,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("gmap_canvas"), mapOptions);

  var panoramaOptions = {
    position: latlng
  };
  var panorama = new  google.maps.StreetViewPanorama(document.getElementById("gmap_street_view"), panoramaOptions);
  map.setStreetView(panorama);
}
