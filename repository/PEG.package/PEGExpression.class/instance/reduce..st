optimizing
reduce: nodes
	(nodes includes: self)
		ifFalse: [
			nodes add: self.
			self recurseReduce: nodes ].
	^ self reduced