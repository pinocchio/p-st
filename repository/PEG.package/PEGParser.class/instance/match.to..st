matching
match: input to: stream
	| outputPosition inputPosition |
	name ifNotNil: [ self class stream: name ].
	inputPosition := input position.
	outputPosition := stream position.
	(expression match: input to: stream) ifFalse: [ ^ false ].
	stream poke: (semantics value: stream peek).
	^ true