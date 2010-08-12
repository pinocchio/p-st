as yet unclassified
spaceString: size
	| result |
	result := String new: size.
	1 to: size do: [ :i | result at: i put: $  ].
	^ result