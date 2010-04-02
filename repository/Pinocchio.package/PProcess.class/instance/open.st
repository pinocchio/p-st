processing
open
	self isOpened ifTrue: [ ^ self ].
	self command ifNil:  [ self error: 'Can''t open with an empty command'].
	returnStatus := nil.
	self popen.