accessing
next
	position = self size
		ifTrue: [ position := 1]
		ifFalse: [position := position + 1 ].
	^ self current