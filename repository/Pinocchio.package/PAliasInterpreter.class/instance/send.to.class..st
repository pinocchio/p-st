sending
send: aMessage to: receiver class: class
	| result |
	self aliasArguments: aMessage.
	^ super send: aMessage to: receiver class: class