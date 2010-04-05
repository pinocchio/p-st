exporting
createFooter
	stream
		nextPutAll: 'void init_';
		nextPutAll: self pclass name asString;
		nextPutAll: '_methods() {';
		lf.
	self methods do:[ :method | 
			stream
				nextPutAll: 'init_method_';
				nextPutAll: method uid;
				nextPutAll: '();';
				lf 
		].
	stream nextPutAll: '}'