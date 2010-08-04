testing
ifStale: aBlock
	self isConnected
		ifFalse: [ aBlock value ]