document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      tasks: [
        'Brian is secretly a Duke fan!',
        'The Rangers will beat the Senators!',
        'Watching the Clippers always fail is hilarious!',
        'The internship sounds cool!'
      ],
      newTask: ''
    },
    methods: {
      addTask: function() {
          console.log("This is my new task");
          this.tasks.push(this.newTask);
          this.newTask = "";
    }
  });
});
