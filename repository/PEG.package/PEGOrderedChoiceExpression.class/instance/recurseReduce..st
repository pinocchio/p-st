optimizing
recurseReduce: nodes
	|newchildren|
	newchildren := OrderedCollection new.
	children do: [ :c | |nc|
		nc := c reduce: nodes.
		(nc = self) ifTrue: [ self shouldNeverHappen " This would make the parser recurse infinitely! "].
		(nc class = self class)
			ifTrue: [ newchildren addAll: nc children]
			ifFalse: [ newchildren add: nc ] ].
	children := newchildren