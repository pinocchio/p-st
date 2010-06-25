as yet unclassified
popTo: index
	| result |
	result := OrderedCollection new: lastIndex - index.
	index + 1 to: lastIndex do: [ :i | result add: (array at: i) ].
	lastIndex := index.
	^ result