convenience
createSendTo: receiver sized: size
	(receiver isKindOf: ASTSuper)
		ifTrue: [ ^ PSuper new: size ].
	^ (PSend new: size)
		receiver: (self visit: receiver)