var entries = [];

var name = document.getElementById('name').value;

webkit.messageHandlers.didFetch.postMessage(name);
