convenience
doVisitOn: aNode withSelector: selector
	| getter setter nodeElement |
	getter := selector.
	setter := (selector, ':') asSymbol. 
	
	nodeElement := aNode perform: getter.
	
	nodeElement isArray 
		ifTrue: [ nodeElement := nodeElement collect: [ :el| self visit: el] ].
	(nodeElement class inheritsFrom: ASTNode)
		ifFalse: [ ^ aNode ]
		ifTrue: [nodeElement := self visit: nodeElement].
	
	aNode perform: setter  with: nodeElement.
	^ aNode.