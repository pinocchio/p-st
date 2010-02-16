exporting
createTestCaseFor: methodSelector
	| method selector |
	self pclass methods at: methodSelector asPSymbol ifPresent: [ :astMethod |
	
	method := self extractMethod: methodSelector.
	
	self separator.
	selector := self createSelectorFor: methodSelector.
	stream nextPutAll: 'NEW_TEST(';
		nextPutAll: self name;
		nextPutAll: '_';
		nextPutAll: selector asString;
		nextPutAll: ')'; cr.
	self createMethodSourceStringFor: method.
	self createMethodCallFor: astMethod of: method.
	self createAssertFor: astMethod of: method.
	stream nextPutAll: '}'
	]