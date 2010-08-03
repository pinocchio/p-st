accessing
at: anObject
	| uid |
	^ ids at: anObject ifAbsent:  [
		uid := self rawIdFor: anObject.
		^ self at: anObject put: uid].