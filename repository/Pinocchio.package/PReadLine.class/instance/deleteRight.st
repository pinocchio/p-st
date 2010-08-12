escapecodes
deleteRight
	buffer next ifTrue: [
		buffer remove.
		output deleteCharacter ]