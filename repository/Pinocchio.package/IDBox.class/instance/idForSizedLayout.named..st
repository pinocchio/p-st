visiting
idForSizedLayout: anArray named: aName
	anArray size = 0 ifTrue: [ ^ 'empty_', aName, '_layout' ].
	^ self idForLayout: anArray.