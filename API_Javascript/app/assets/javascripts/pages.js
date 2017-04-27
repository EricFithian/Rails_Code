function getData() {
  $.get("https://data.cityofnewyork.us/resource/jumu-9v4u.json").done(
    function(response) {
      console.log(response);
      var divTennis = document.getElementById("tennis");
      divTennis.innerHTML = 'loading...';
      var contentString = '';
      for (var i = 0; i < getData.length; i++) {
        contentString += "<div onclick='changeTennis(this)'>";
        contentString += '<p>' + response[i].age + '<p>';
        contentString += '<p>' + response[i].duplicate_permit_fee + '<p>';
        contentString += '<p>' + response[i].fee + '<p>';
      }
      divTennis.innerHTML = contentString;
    }
  );
}
