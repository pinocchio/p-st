matching
match: input to: stream
	(child match: input to: stream) ifFalse: [ ^ false ].
	^ super match: input to: stream