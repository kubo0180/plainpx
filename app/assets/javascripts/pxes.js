// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

function $(eid) {
  return document.getElementById(eid);
}

function GmapInitialize() {
  var lat = parseFloat($("latitude").textContent), lng = parseFloat($("longitude").textContent);
  var latlng = new google.maps.LatLng(lat, lng);
  var mapOptions = {
    center: latlng,
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map($("gmap_canvas"), mapOptions);

  var marker = new google.maps.Marker({
    position: latlng,
    map: map
  });
}
