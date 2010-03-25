sending
invokeMethod: closure on: receiver class: class message: aMessage
	| method result pc |
	method := closure code.
	self assert: method params size = aMessage size.
	method size = 0
		ifTrue: [ ^ receiver ].
	self
		methodContextFor: closure
		receiver: receiver
		class: class
		message: aMessage.
	[ (pc := context nextPc) < method size ] whileTrue: [ (method at: pc) accept: self ].
	result := (method at: pc) accept: self.
	context := context returnContext.
	^ result