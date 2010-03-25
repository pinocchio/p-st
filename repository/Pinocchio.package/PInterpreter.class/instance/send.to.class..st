sending
send: aMessage to: receiver class: class
	| method |
	self class = PInterpreter ifTrue: [ PFile stderr: 'At interpreter level: ', aMessage selector. PFile stderr lf. ].
	method := self lookupSelector: aMessage selector in: class.
	method ifNil: [ ^ self sendDoesNotUnderstandFor: aMessage to: receiver ].
	^ method
		accept: self
		on: receiver
		message: aMessage