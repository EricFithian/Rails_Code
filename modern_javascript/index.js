console.log("Go Rangers!");
var moment = require('moment');

var datetime = moment().startOf('day').fromNow();

console.log(datetime);

function test(x) {
  console.log(x);
}

test("Fuck this!");