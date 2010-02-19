running
testVisitMethodSubCollection
	| ast |
	parser := scparser method.
	ast := self ast: 'beginsWith: subCollection 
	| pattern startMatch |
	pattern := subCollection readStream.
	startMatch := nil.
	[ pattern atEnd ] whileFalse: 
		[ self atEnd ifTrue: [ ^ false ].
		self next ~= pattern next 
			ifTrue: [ ^ false ] ].
	^ true'.
	ast hasReturn should = true.