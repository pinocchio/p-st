as yet unclassified
deleteRight
	^ self currentLine next
		ifTrue: [ self deleteLeft ]
		ifFalse: [ false ]