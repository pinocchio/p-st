interpretation
interpret: code 
	^ nil perform: (self compile: code) selector.