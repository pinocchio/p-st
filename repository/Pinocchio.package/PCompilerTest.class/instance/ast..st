running
ast: string
	^ visitor visit: (pparser match: string to: parser)