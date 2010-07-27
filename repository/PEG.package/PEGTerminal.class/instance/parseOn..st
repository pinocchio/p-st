matching
parseOn: input
	| stack |
	stack := input stack.
	(input scan: stringValue) ifFalse: [ ^ false ].
	stack pushAll: string.
	^ true