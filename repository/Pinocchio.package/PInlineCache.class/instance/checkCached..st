accessing
checkCached: aClass
	class = aClass ifTrue: [ ^ method ].
	^ nil