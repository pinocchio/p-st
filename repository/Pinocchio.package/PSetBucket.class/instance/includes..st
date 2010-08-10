testing
includes: anObject
	1 to: bucketSize do: [ :index | 
			(self at: index) = anObject ifTrue: [ ^ true ] ].
	^ false