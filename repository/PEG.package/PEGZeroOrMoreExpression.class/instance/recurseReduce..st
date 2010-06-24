optimizing
recurseReduce: nodes
	child := child reduce: nodes.
	(child class = PEGZeroOrMoreExpression)
		ifTrue: [ child := child child ]