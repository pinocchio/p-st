matching
match: input to: stream
	(input scan: string) ifFalse: [ ^ false ].
	stream pushAll: string.
	^ true