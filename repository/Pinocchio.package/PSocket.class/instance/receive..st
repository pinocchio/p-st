primitives
receive: max 

	[ self primReadyToReceive ] whileFalse: [
		"self warn: 'waiting to receive'."
		PThread current primYield.
	].

	self isConnected  ifFalse: [
		self warn: 'Connection lost'.
		^ nil.
	] ifTrue: [ self warn: 'Connection is ok'].

	self warn: 'received'.
	^ self primReceive: max.