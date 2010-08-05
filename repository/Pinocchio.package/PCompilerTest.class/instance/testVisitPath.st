running
testVisitPath
	| result pclass root type classReference |
	parser := scparser primaryVariable.
	pclass := PClass new.
	root := PRootPackage new.
	type := root ensurePackageNamed: 'Type'.
	classReference := type ensureClassReference: #Object.
	classReference ensurePinocchioClass: pclass.
	pclass package: type.
	visitor pclass: pclass.
	result := self ast: 'Pinocchio.Type.Object'.
	result should = classReference.
	result := self ast: 'Type.Object'.
	result should = classReference.
	result := self ast: 'Pinocchio.Type'.
	result constant should = type.
	result := self ast: 'Object'.
	result should = classReference.
	result := self ast: 'Pinocchio'.
	result should = root.
	result := self ast: 'Type'.
	result should = type