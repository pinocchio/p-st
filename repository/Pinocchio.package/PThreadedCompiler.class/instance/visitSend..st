visiting
visitSend: aSend
	aSend message = #ifTrue: ifTrue: [ ^ self compileSendIfTrue: aSend ].
	aSend message = #ifFalse: ifTrue: [ ^ self compileSendIfFalse: aSend ].
	aSend message = #ifTrue:ifFalse: ifTrue: [ ^ self compileSendIfTrueIfFalse: aSend ].
	aSend message = #ifFalse:ifTrue: ifTrue: [ ^ self compileSendIfFalseIfTrue: aSend ].
	aSend message = #to:do: ifTrue: [ ^ self compileSendToDo: aSend ].
	aSend message = #to:by:do: ifTrue: [ ^ self compileSendToByDo: aSend ].
	self compileSend: aSend.