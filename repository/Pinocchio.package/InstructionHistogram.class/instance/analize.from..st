as yet unclassified
analize: functionPointers from: offset
	| histogram |
	functionPointers size < offset ifTrue: [ ^ self ].
	self analize: functionPointers from: offset +1.
	((functionPointers at: offset) isKindOf: PFunctionPointer) ifFalse: [ ^ self].
	(self depth > 2) ifTrue: [ ^ self].
	histogram := self histogramAt: (functionPointers at: offset) name.
	histogram increment.
	histogram analize: functionPointers  from: offset + 1.