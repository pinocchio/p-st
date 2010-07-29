matching
parseOn: input
	[ input scanPush: stringValue ] whileTrue.
	^ true