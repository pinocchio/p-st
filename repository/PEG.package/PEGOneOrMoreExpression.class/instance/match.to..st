matching
match: input to: stream
	| position outputPosition |
	(child match: input to: stream) ifFalse: [ ^ false ].
	^ super match: input to: stream