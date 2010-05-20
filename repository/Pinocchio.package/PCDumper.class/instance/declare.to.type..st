convenience
declare: aString to: aPinocchioObject type: type
	self onAssignTo
		ifNotNil:
			[ stream nextPutAll: (self onAssignTo value: aString value: aPinocchioObject).
			^ self ].
	stream
		nextPutAll: type,' ';
		nextPutAll: aPinocchioObject uid;
		nextPutAll: ' = (',type,')';
		nextPutAll: aString;
		nextPutAll: ';';
		cr