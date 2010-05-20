convenience
assign: aString to: aPinocchioObject
	self onAssignTo
		ifNotNil:
			[ stream nextPutAll: (self onAssignTo value: aString value: aPinocchioObject).
			^ self ].
	stream << aPinocchioObject uid << ' = (' << aPinocchioObject type << ')' << aString << ';'; lf