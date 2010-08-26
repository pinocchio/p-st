printing
printOn: aStream
 
	| format |
	format := OrderedCollection new
		add: 1; add: 2; add: 3; add: $  ; add: 3; add: 1; yourself. "#(1 2 3 $  3 1 )"
 	self printOn: aStream format: format asArray