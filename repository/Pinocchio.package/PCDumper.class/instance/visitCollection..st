convenience
visitCollection: aCollection
	aCollection do: [ :aNode | self visit: aNode ].