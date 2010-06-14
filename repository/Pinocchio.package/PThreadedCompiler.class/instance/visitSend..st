visiting
visitSend: aSend
	| aBlock |
	"aSend message = #to:do:: ifTrue: [ ^ self compileToDo: aSend ]."
	aSend message = #ifTrue: ifTrue: [ ^ self compileIfTrue: aSend ].
	aSend message = #ifFalse: ifTrue: [ ^ self compileIfFalse: aSend ].
	aSend message = #ifTrue:ifFalse: ifTrue: [ ^ self compileIfTrueIfFalse: aSend ].
	aSend message = #hash ifTrue: [ ^ self compileHash: aSend ].
	aSend message = #value ifTrue: [ ^ self compileValue: aSend ].
	self compileSend: aSend.