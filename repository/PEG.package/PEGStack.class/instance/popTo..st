stack operations
popTo: index
	| result |
	index >= 0 ifFalse: [ self popUnderflow: index ].
	position < index ifTrue: [ self popOverflow: index ].
	result := OrderedCollection new: position - index.
	index + 1 to: position do: [ :i | result add: (array at: i) ].
	position := index.
	^ result