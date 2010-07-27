convenience
assign: aString to: aPinocchioObject
	stream << (self idFor: aPinocchioObject) << ' = (' << aPinocchioObject ctype << $).
	self putStringOrBlock: aString.
	stream << ';'; lf.