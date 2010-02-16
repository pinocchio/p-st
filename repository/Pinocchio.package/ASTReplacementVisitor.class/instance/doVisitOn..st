convenience
doVisitOn: aNode
	aNode class astSelectors do: [ :el| self doVisitOn: aNode withSelector: el].
	^ aNode