matching
match: input to: stream fail: block
	| inputPosition outputPosition failed |
	inputPosition := input position.
	outputPosition := stream position.
	failed := false.
	children do: [ :child |
		child match: input to: stream fail: [ failed := true ].
		failed
			ifTrue: [
				failed := false.
				input position: inputPosition.
				stream zapTo: outputPosition ]
			ifFalse: [ ^ nil ] ].
	block value