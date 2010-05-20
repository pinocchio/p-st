convenience
assign: aString to: aPinocchioObject
	stream << aPinocchioObject uid << ' = (' << aPinocchioObject type << ')' << aString << ';'; lf