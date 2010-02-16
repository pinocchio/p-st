convenience
assign: aString to: aPinocchioObject
	self onAssignTo ifNotNil: [
		stream nextPutAll: (self onAssignTo value: aString value: aPinocchioObject).
		^ self.
	].
	stream
		nextPutAll: aPinocchioObject uid;
		nextPutAll: ' = ';
		nextPutAll: aString;
		nextPutAll: ';';
		cr.