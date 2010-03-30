sending
send: aMessage to: receiver class: class
	| method |
	"PFile stderr: 'At ',self class name,' level: ', aMessage selector, ' #', receiver hash asString. PFile stderr lf."
	method := self lookupSelector: aMessage selector in: class.
	method ifNil: [ ^ self sendDoesNotUnderstandFor: aMessage to: receiver ].
	^ method
		accept: self
		on: receiver
		message: aMessage