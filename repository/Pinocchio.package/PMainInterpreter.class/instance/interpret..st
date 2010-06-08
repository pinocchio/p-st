interpretation
interpret: code
	[ ^ nil perform: (self compile: code) selector ] 
		on: Exception 
		do: [ :ex | self warn: ex asString ].