running
testVisitPath2
	| result pclass root type classReference |
	parser := scparser primaryVariable.
	pclass := PClass new.
	root := PRootPackage new.
	type := root ensurePackageNamed: 'IO'.
	classReference := type ensureClassReference: #Object.
	classReference ensurePinocchioClass: pclass.
	pclass package: type.
	visitor pclass: pclass.
	result := self ast: 'Pinocchio.IO.Object'.
	result should = classReference.
	result := self ast: 'IO.Object'.
	result should = classReference.
	result := self ast: 'Pinocchio.IO'.
	result constant should = type.
	result := self ast: 'Object'.
	result should = classReference.
	result := self ast: 'Pinocchio'.
	result should = root.
	result := self ast: 'IO'.
	result should = type