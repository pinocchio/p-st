removing
deleteRight
	self currentLine next ifTrue: [
		self currentLine remove.
		output deleteCharacter ]