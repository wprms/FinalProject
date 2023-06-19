navigator.geolocation.getCurrentPosition(function(position) {
    var latlng = position.coords.latitude + "," + position.coords.longitude;
    var url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=" + latlng + "&key=AIzaSyBipZGdHuYEibwhDYjX7uP-0Cn6zMo21EU";

    fetch(url)
      .then(response => response.json())
      .then(data => {
        if (data.status == "OK") {
          var address = data.results[0].formatted_address;
          document.getElementById("custloc").value = address;
        } else {
          console.log("Geocoding failed: " + data.status);
        }
      })
      .catch(error => console.error(error));
  });