optimizing
recurseReduce: nodes
	expression ifNotNil: [
		expression := expression reduce: nodes ]