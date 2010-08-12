exporting
addGlobal: anObject
	(globals includes: anObject) ifTrue: [ ^ self ].
	fileGlobals add: anObject.
	globals add: anObject.