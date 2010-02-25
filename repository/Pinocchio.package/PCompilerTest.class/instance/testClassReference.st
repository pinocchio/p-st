running
testClassReference
	| ast pclass root type classReference |
	parser := scparser method.
	pclass := PClass new.
	root := PRootPackage new.
	type := root ensurePackageNamed: 'Type'.
	classReference := type ensureClassReference: #Metaclass.
	classReference ensurePinocchioClass: pclass.
	pclass package: type.
	visitor pclass: pclass.
	ast := self ast: ('method', String cr, '|a|', String cr, 'a := Metaclass new.').