sending
send: aMessage to: receiver class: class for: aSend
	| method |
	"PFile stderr: 'At ',self class name,' level: ', aMessage selector, ' #', receiver hash asString. PFile stderr lf."
	method := aSend inlineCache checkCached: class.
	method ifNotNil: [ ^ method accept: self on: receiver message: aMessage ].
	
	method := self lookupSelector: aMessage selector in: class.
	method ifNil: [ ^ self sendDoesNotUnderstandFor: aMessage to: receiver ].
	
	aSend inlineCache cache: method at: class.
	^ method
		accept: self
		on: receiver
		message: aMessage