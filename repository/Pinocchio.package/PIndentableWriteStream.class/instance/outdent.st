as yet unclassified
outdent
	indent := indent - 1.
	indent < 0 ifTrue: [ indent should be >= 0 ]