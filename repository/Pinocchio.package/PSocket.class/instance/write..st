primitives
write: aString

	[ self primReadyToWrite ] whileFalse: [
		PThread current yield.
	].
	self warn: 'Write!'.
	^ self primWrite: aString .