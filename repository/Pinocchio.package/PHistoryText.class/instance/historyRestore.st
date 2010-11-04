as yet unclassified
historyRestore
	(history atStart or: [ history atEnd]) ifTrue: [ ^ false ].
	self setLines: history value getLines.
	self position: 0.
	^ true
	