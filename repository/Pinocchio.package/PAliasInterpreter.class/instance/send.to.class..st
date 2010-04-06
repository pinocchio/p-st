sending
send: aMessage to: receiver class: class
	| result |
	result := super send: (self aliasArguments: aMessage) to: receiver class: class.
	^ PReturnAlias alias: result