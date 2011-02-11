interpretation
evaluate: code
	^ self perform: (self compile: code) selector