document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      players: [],
      newPlayerFirstName: '',
      newPlayerLastName: '',
      newPlayerPosition: '',
      newPlayerPhoneNumber: '',
      newPlayerAverage: '',
      newPlayerSalary: ''
    },
    mounted: function() {
      console.log('mounted is working');
      $.get("/api/v1/players", function(response) {
        console.log(response);
        console.log(this);
        this.players = response;
      }.bind(this));
    },
    methods: {
      toggleInfoVisible: function(inputPlayer) {
        console.log('toggling...');
        console.log(inputPlayer);
        inputPlayer.bioVisible = !inputPlayer.bioVisible;
      },
      addPlayer: function() {
        console.log('adding the player...');
        // push an object into the perople array
        var parameters = {
          firstName: this.newPlayerFirstName,
          lastName: this.newPlayerLastName,
          position: this.newPlayerPosition,
          phoneNumber: this.newPlayerPhoneNumber,
          average: this.newPlayerAverage,
          salary: this.newPlayerSalary
        };

        $.post("/api/v1/player", parameters, function(response) {
          console.log('success');
          this.player.push(response);
          this.newPlayerFirstName = '';
          this.newPlayerLastName = '';
          this.newPlayerPosition = '';
          this.newPlayerPhoneNumber = '';
          this.newPlayerAverage = '';
          this.newPlayerSalary = '';
        }.bind(this)).fail(function(responseError) {
          console.log(responseError.responseJSON.errors);
          this.errors = responseError.responseJSON.errors;
        }.bind(this));
      },
      countOfPlayers: function() {
        return this.player.length;
      },
      removePlayer: function(inputPlayer) {
        console.log('removing player...');
        // get the index of that player
        // sPlice them out
        var index = this.player.indexOf(inputPlayer);
        console.log(index);
        this.player.splice(index, 1);
      },
      isValidPlayer: function(inputPlayer) {
        return inputPlayer.name.indexOf(this.nameSearch) > -1;
      } 
    }
  });
});
