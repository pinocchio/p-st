processing
close
	self isClosed ifTrue: [ ^ self ].
	returnStatus := self pclose.
	in := nil.
	out := nil.
	^ returnStatus.