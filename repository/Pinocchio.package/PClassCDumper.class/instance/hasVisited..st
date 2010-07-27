as yet unclassified
hasVisited: aNode
	| uid |
	(super hasVisited: aNode) ifTrue: [ ^ true].
	methodScope isNil ifTrue: [^ false].
	uid := self idFor: aNode.
	(methodScope includes: uid) ifTrue: [ ^ true].
	methodScope add: uid.
	^ false