convenience
assign: aString to: aPinocchioObject
	stream << aPinocchioObject uid << ' = (' << aPinocchioObject ctype << ')' << aString << ';'; lf