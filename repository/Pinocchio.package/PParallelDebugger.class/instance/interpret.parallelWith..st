interpreting
interpret: leftClosure parallelWith: rightClosure
	| leftResult rightResult |
	left stepBlock:
		[:aMessage :receiver :action |
			^ action].
	"right stepBlock:
		[:aMessage :receiver :action |
			^ OrderedCollection with: aMessage with: receiver with: action ]."
	leftResult := left send: (PMessage new selector: #value) to: leftClosure class: leftClosure class.
	"rightResult := right send: (PMessage new selector: #value) to: rightClosure."
	true whileTrue: [
		"PFile stderr: (leftResult at: 1) class name , '>>' , (leftResult at: 2) selector.
		PFile stderr lf."
		leftResult := left step: (leftResult).
		"rightResult := right step: (rightResult at: 3)."
	]