accessing
hasVisited: aNode
	aNode ifNil: [self error: 'Should not get nil to hasVisited!'].
	(visitedNodes includes: aNode) ifFalse: [
		visitedNodes add: aNode.
		^ false
	].
	^ true