primitives
receive

	[ self primReadyToReceive ] whileFalse: [
		"self warn: 'waiting to receive'."
		PThread current primYield.
	].
	self warn: 'received'.
	^ self primReceive.