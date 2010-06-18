visiting
visitSend: aSend
	| aBlock |
	"aSend message = #to:do:: ifTrue: [ ^ self compileToDo: aSend ]."
	aSend message = #ifTrue: ifTrue: [ ^ self compileSendIfTrue: aSend ].
	aSend message = #ifFalse: ifTrue: [ ^ self compileSendIfFalse: aSend ].
	aSend message = #ifTrue:ifFalse: ifTrue: [ ^ self compileSendIfTrueIfFalse: aSend ].
	aSend message = #hash ifTrue: [ ^ self compileSendHash: aSend ].
	"aSend message = #value ifTrue: [ ^ self compileValue: aSend ]."
	"aSend message = #to:do: ifTrue: [ ^ self compileSendToDo: aSend ]."
	self compileSend: aSend.