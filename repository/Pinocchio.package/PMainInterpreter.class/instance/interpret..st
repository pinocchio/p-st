interpretation
interpret: code
	[ ^ nil perform: (self compile: code) selector ] 
		on: Object 
		do: [ :ex | 
			self exceptions add: ex.
			self warn: ex asString. ^ ex].