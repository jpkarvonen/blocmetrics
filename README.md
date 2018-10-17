# Blocmetrics:

## An analytic service built with Ruby on Rails that tracks events on websites

### Features Include:

*	A client-side Javascript snippet to track website events
*	A server-side API that captures and saves those events to a database
*	The Chartkick gem is used to display graphs bases on captured event data
*	The Devise gem is used for user authentication, which includes automated confirmation emails
*	Can register and track multiple applications with each displayed in an index for the user
*	Utilizes CORS so the client’s JavaScript code can send AJAX requests to the API

This is the JavaScript snippet you can put in your app to track events. If you're using Rails, put the snippet in app/assets/javascripts/application.js:

```var blocmetrics = {};
blocmetrics.report = function(eventName){
	var event = {event: { name: eventName }};
    var request = new XMLHttpRequest();
    request.open("POST", "https://d7b8d428caee48c8809a08f96a85182f.vfs.cloud9.us-east-2.amazonaws.com/api/events", true);
    request.setRequestHeader('Content-Type', 'application/json');
    request.send(JSON.stringify(event));
};```
