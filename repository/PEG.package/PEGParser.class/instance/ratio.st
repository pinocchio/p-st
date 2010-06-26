accessing
ratio
	miss = 0 ifTrue: [ ^ hit = 0 ifTrue: [ 0 ] ifFalse: [ 1] ].
	^ hit / miss