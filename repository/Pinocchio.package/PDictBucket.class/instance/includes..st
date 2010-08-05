testing
includes: anObject
	2 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = anObject ifTrue: [ ^ true ]].
	^ false