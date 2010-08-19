matching
parseOn: input
	[ input scanPush: string ] whileTrue.
	^ true