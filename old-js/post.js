$(document).ready(function() {
  var title = getQueryStringValue("title");
  var body = getQueryStringValue("body");
  $('#title').text(title);
  $('#body').text(body);
});

function getQueryStringValue (key) {  
  return decodeURIComponent(window.location.search.replace(new RegExp("^(?:.*[&\\?]" + encodeURIComponent(key).replace(/[\.\+\*]/g, "\\$&") + "(?:\\=([^&]*))?)?.*$", "i"), "$1"));  
}  
