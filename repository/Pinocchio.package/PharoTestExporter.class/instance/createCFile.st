exporting
createCFile
	stream := self createStream: '/test/lib/lib.c'.
	self include: 'test/lib/lib.h'.
	
	stream nextPutAll: 'void test_lib() {'; cr.
	
	self todo do: [ :pClass|
		stream 	nextPutAll: 'test_';
				nextPutAll: pClass name asString;
				nextPutAll: '();'; cr.
	].
	
	stream nextPutAll: '}'.
	
	stream close.