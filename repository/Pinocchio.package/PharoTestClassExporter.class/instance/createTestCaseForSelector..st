exporting
createTestCaseForSelector: methodSelector
	| method selector astMethod |
	astMethod := self extractASTMethod: methodSelector.
	method := self extractMethod: methodSelector.
	
	self separator.
	selector := self createSelectorFor: methodSelector.
	stream nextPutAll: 'NEW_TEST(';
		nextPutAll: self name;
		nextPutAll: '_';
		nextPutAll: selector asString;
		nextPutAll: ')'; lf.
	self createMethodSourceStringFor: method.
	self createMethodCallFor: astMethod of: method.
	self createAssertFor: astMethod of: method.
	stream nextPutAll: '}'.