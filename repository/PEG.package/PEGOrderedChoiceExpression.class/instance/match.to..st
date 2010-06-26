matching
match: input to: stream
	| inputPosition outputPosition |
	inputPosition := input position.
	outputPosition := stream position.
	children do: [ :child |
		(child match: input to: stream) ifTrue: [ ^ true ].
		input position: inputPosition.
		stream zapTo: outputPosition ].
	^ false