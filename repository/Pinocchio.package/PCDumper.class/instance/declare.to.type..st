convenience
declare: aString to: aPinocchioObject type: type
	self onAssignTo
		ifNotNil:
			[ stream << self onAssignTo value: aString value: aPinocchioObject.
			^ self ].
	stream << type << ' ' << aPinocchioObject uid << ' = (' << type << ')' << aString << ';'; lf