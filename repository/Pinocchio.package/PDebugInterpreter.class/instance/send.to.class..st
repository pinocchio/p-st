sending
send: aMessage to: receiver class: class
	self checkStep: receiver message: aMessage.
	^ super send: aMessage to: receiver class: class