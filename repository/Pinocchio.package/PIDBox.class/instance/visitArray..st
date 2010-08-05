visiting
visitArray: anArray
	anArray size = 0 ifTrue: [ ^ #'empty_Array'].
	^ self rawDefaultIdFor: anArray.