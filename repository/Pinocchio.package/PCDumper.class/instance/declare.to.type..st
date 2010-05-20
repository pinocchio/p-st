convenience
declare: aString to: aPinocchioObject type: type
	stream << type << ' ' << aPinocchioObject uid << ' = (' << type << ')' << aString << ';'; lf