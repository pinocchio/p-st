exporting
createFooter
	stream
		nextPutAll: 'void init_';
		nextPutAll: self pclass name asString;
		nextPutAll: '_methods() {'; cr.
	
	self methods do: [ :method|
		stream nextPutAll: 'init_method_';
			nextPutAll: method uid;
			nextPutAll: '();'; cr.
	].
	
	stream nextPutAll: '}'.