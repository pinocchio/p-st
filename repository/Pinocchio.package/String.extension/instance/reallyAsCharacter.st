*Pinocchio
reallyAsCharacter
	^ self size = 1
		ifTrue: [ self first ]
		ifFalse: [ self error: 'String is not of size 1' ]