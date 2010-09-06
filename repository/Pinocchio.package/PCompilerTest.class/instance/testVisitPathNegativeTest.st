running
testVisitPathNegativeTest
	<preventExport>
	| result pclass root type classReference |
	parser := pparser variableName.
	pclass := PClass new.
	root := PRootPackage new.
	type := root ensurePackageNamed: #IO.
	classReference := type ensureClassReference: #Object.
	classReference ensurePinocchioClass: pclass.
	pclass package: type.
	visitor pclass: pclass.
	[ self ast: 'Pinocchio.Type.Object' ] should signal: Error.
	[ self ast: 'Type.Object' ] should signal: Error.
	[ self ast: 'Pinocchio.Type' ] should signal: Error.
	result := self ast: 'Object'.
	result should = classReference.
	result := self ast: 'Pinocchio'.
	result should = root.	"These examples declare a new class"
	[ self ast: 'Type' ] should signal: Halt