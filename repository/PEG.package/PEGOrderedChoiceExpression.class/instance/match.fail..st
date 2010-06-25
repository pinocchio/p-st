matching
match: input fail: block
	| inputPosition failed |
	inputPosition := input position.
	failed := false.
	children do: [ :child |
		child match: input fail: [ failed := true ].
		failed
			ifTrue: [
				failed := false.
				input position: inputPosition ]
			ifFalse: [ ^ nil ] ].
	block value