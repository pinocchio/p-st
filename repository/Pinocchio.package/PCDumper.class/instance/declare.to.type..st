convenience
declare: aString to: aPinocchioObject type: type
	stream << type << ' ' << (self idFor: aPinocchioObject) << ' = '.
	self putStringOrBlock: aString.
	stream << ';'; lf.