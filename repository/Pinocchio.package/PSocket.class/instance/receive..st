primitives
receive: max 

	[ self primReadyToReceive ] whileFalse: [
		"self warn: 'waiting to receive'."
		PThread current primYield.
	].

	self isConnected  ifFalse: [
		self warn: 'Connection lost'.
		^ nil.
	].

	self warn: 'received'.
	^ self primReceive: max.