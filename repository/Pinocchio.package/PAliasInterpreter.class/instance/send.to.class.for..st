sending
send: aMessage to: receiver class: class for: aSend
	| result |
	result := super send: (self aliasArguments: aMessage) to: receiver class: class for: aSend.
	^ PReturnAlias alias: result