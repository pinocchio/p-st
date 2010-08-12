actions
deleteLeft
	buffer remove ifTrue: [
		output backspace.
		output deleteCharacter ].
	^ false