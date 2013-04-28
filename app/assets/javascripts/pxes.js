// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

function $(eid) {
  return document.getElementById(eid);
}

function GmapInitialize() {
  var lat = parseFloat($("latitude").textContent), lng = parseFloat($("longitude").textContent);
  var mapOptions = {
    center: new google.maps.LatLng(lat, lng),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map($("gmap_canvas"), mapOptions);
}
