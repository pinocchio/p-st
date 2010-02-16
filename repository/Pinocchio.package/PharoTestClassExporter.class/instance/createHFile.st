exporting
createHFile
	| guardName |
	stream := self createStream: ('test/lib/test/', self name, '.h').
	
	guardName := 'PINOCCHIO_LIB_TEST_', self name asUppercase.
	self startGuard: guardName.
	
	self include: 'pinocchio.h'.
	self include: 'test/pinocchioTest.h'.
	self include: 'lib/lib.h'.
	
	stream nextPutAll: 'extern void test_';
		nextPutAll: self name; 
		nextPutAll: '();'; cr; cr.
		
	self endGuard: guardName.
	
	stream close.
	