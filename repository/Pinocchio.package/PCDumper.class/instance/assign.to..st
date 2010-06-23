convenience
assign: aString to: aPinocchioObject
	stream << aPinocchioObject uid << ' = (' << aPinocchioObject ctype << $).
	self putStringOrBlock: aString.
	stream << ';'; lf.