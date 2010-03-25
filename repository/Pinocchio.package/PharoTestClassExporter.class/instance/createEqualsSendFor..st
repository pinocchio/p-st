exporting
createEqualsSendFor: anObject
	| ast |
	(anObject isKindOf: Symbol)
		ifTrue: [ ast := anObject asPObject ]
		ifFalse:
			[ (anObject isKindOf: String)
				ifTrue: [ ast := anObject asPObject ] ].
	ast ifNil: [ self error: 'Unknown layout given' ].
	cdumper stream: stream.
	cdumper visit: ast.
	stream
		nextPutAll: 'result = Eval_Send1(result, SMB__equal, ';
		nextPutAll: ast uid;
		nextPutAll: ');';
		lf.
	self assertEmptyStack