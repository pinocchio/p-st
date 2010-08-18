running
ast: string
	^ visitor visit: (scparser match: string to: parser)