visiting
visitSend: aSend
	| aBlock |
	aSend message = #ifTrue: ifTrue: [ ^ self compileIfTrue: aSend ].
	aSend message = #ifFalse: ifTrue: [ ^ self compileIfFalse: aSend ].
	aSend message = #ifTrue:ifFalse: ifTrue: [ ^ self compileIfTrueIfFalse: aSend ].
	self compileSend: aSend.