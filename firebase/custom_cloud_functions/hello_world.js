const functions = require('firebase-functions');
const admin = require('firebase-admin');
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.helloWorld = functions.region('asia-northeast1').
	runWith({
		memory: '256MB'
  }).https.onCall(
  (data, context) => {
    // Write your code below!
    return "Hello World";
    // Write your code above!
  }
);