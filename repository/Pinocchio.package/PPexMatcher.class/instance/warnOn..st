printing
warnOn: aStream
	aStream << (bool ifFalse: [ 'Didn''t expect' ] ifTrue: [ 'Expected' ]).
	fail value: aStream.
	aStream << ' but got: '.
	value printOn: aStream.