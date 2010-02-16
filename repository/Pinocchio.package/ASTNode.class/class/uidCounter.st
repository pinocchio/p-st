accessing
uidCounter
	uidCounter ifNil: [ uidCounter := 0].
	^ uidCounter.