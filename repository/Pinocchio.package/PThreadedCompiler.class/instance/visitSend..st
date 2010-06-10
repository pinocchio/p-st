visiting
visitSend: aSend
	| aBlock |
	aSend message = #ifTrue: ifTrue: [ ^ self compileIfTrue: aSend ].
	self compileSend: aSend.