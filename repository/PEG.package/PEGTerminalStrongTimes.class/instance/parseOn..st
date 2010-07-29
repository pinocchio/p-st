matching
parseOn: input
	| stack |
	stack := input stack.
	[ input scan: stringValue ] whileTrue: [ stack pushAll: string ].
	^ true