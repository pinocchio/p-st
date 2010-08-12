as yet unclassified
updateIndentionString
	(indent * 4) > indentionString size ifTrue: [
		indentionString := self spaceString: (indentionString size * 2) ].