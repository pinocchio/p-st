accessing
nextPut: value
	position = self size ifFalse: [
		self at: position + 1 put: value
	]