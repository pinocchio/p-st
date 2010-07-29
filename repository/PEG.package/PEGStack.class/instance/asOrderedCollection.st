converting
asOrderedCollection
	| collection s |
	s := position - mark.
	collection := OrderedCollection new: s.
	1 to: s do: [ :i | collection add: (array at: i + mark) ].
	^ collection