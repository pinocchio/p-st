initialize-release
initialize
	super initialize.
	progress := [0].
	restrictionSet := Set new.
	root := PRootPackage new.
	done := IdentityDictionary new.
	todo := OrderedCollection new.
	scparser := SCParser new.
	pinocchioVisitor := PCompiler new.
	pinocchioVisitor world: self.
	cdumper := PCDumper new.
	classASTs := IdentityDictionary new.