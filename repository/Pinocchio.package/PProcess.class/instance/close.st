processing
close
	self isOpened ifFalse: [ ^ self ].
	returnStatus := self pclose.
	in := nil.
	out := nil.
	^ returnStatus.