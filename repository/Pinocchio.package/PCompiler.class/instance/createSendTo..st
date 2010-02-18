convenience
createSendTo: receiver
	(receiver isKindOf: ASTSuper) ifTrue: [ ^ PSuper new].
	^ PSend new 
		receiver:  (self visit: receiver); 
		info: self currentInfo.