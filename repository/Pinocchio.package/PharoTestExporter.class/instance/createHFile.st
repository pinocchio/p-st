exporting
createHFile
	| guardName |
	stream := self createStream: '/test/lib/lib.h'.
	guardName := 'PINOCCHIO_LIB_TEST'.
	self startGuard: guardName.
	
	self include: 'pinocchio.h'.
	self include: 'lib/lib.h'.
	
	stream nextPutAll: 'extern void test_lib();'; cr; cr.
	
	self todo do:[ :pClass | 
		self include: 'test/lib/test/', pClass name asString, '.h'.
	].
	
	self endGuard: guardName.
	
	stream close