convenience
installPInfoOn: aPASTObject
	| astInfo |
	aPASTObject info ifNil: [ ^ self ].
	self visit: aPASTObject info.
	stream << '((' << aPASTObject class pTypeName << ')' << aPASTObject uid <<  ')->info = (Info)' << aPASTObject info uid << ';'; lf