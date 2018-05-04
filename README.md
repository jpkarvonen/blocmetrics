# README

This is the JavaScript snippet you can put in your app to track events. In Rails, put the snippet in app/assets/javascripts/application.js:

```var blocmetrics = {};
blocmetrics.report = function(eventName){
	var event = {event: { name: eventName }};
    var request = new XMLHttpRequest();
    request.open("POST", "https://d7b8d428caee48c8809a08f96a85182f.vfs.cloud9.us-east-2.amazonaws.com/api/events", true);
    request.setRequestHeader('Content-Type', 'application/json');
    request.send(JSON.stringify(event));
};```
