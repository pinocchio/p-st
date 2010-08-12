escapecodes
deleteRight
	buffer atEnd ifFalse: [
		buffer next.
		buffer remove.
		output deleteCharacter ]