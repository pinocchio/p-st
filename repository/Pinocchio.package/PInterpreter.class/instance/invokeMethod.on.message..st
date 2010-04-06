sending
invokeMethod: closure on: receiver message: aMessage
	| method result pc |
	method := closure code.
	self assert: method params size = aMessage size.
	method size = 0 ifTrue: [ ^ receiver ].
	self
		methodContextFor: closure
		receiver: receiver
		message: aMessage.
	result := self interpretMethod: method.
	context := context returnContext.
	^ result