matching
match: input to: stack
	(input scan: stringValue) ifFalse: [ ^ false ].
	stack pushAll: string.
	^ true