interpretation
interpret: code
	[ ^ nil perform: (self compile: code) selector ] 
		on: Exception 
		do: [ self warn: 'XXXXXX'].