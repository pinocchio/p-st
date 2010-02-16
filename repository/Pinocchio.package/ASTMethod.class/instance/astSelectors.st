accessing
astSelectors 
	^ (Array new: 4)
	at: 1 put: #annotations;
	at: 2 put: #message;
	at: 3 put: #statements;
	at: 4 put: #temporaries;
	yourself.