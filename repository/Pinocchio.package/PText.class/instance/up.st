navigating
up
	lines previous.
	lines atStart ifTrue: [ lines next. ^ false ].
	^ true