exporting
createEqualsSendFor: anObject
	| ast |
	(anObject isKindOf: Symbol) ifTrue: [
		ast := anObject asPSymbol.
	] ifFalse: [
		(anObject isKindOf: String) ifTrue: [
			ast := PString new string: anObject.
		]
	].
	
	ast ifNil: [ self error: 'Unknown layout given']. 
	cdumper stream: stream.
	cdumper visit: ast.
	stream nextPutAll: 'result = Eval_Send1(result, SMB__equal, ';
		nextPutAll: ast uid;
		nextPutAll: ');'; cr.
	self assertEmptyStack.