interpretation
visitSend: aSend
	(stepBlock value: aSend) ifTrue: [
		self step: aSend.
	].
	super visitSend: aSend.