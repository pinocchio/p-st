convenience
declare: aString to: aPinocchioObject type: type
	stream << type << ' ' << aPinocchioObject uid << ' = '.
	self putStringOrBlock: aString.
	stream << ';'; lf.