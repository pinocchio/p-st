convenience
installPInfoOn: aPASTObject 
	| astInfo |
	aPASTObject info ifNil: [ ^ self ].
	self visit: aPASTObject info.
	stream nextPutAll: '((',aPASTObject class pTypeName, ')';
		nextPutAll: aPASTObject uid;
		nextPutAll: ')->info = (AST_Info)';
		nextPutAll: aPASTObject info uid;
		nextPutAll: ';'; cr.
	
	