matching
match: input to: stream
	(expression match: input to: stream) ifFalse: [ ^ false ].
	stream poke: (semantics value: stream peek).
	^ true