sending
send: aMessage to: receiver class: class for: aSend
	self checkStep: receiver message: aMessage.
	^ super send: aMessage to: receiver class: class for: aSend