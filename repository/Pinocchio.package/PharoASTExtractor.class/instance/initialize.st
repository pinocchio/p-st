initialize-release
initialize
	super initialize.
	root := PRootPackage new.
	done := IdentityDictionary new.
	todo := OrderedCollection new.
	scparser := SCParser new.
	pinocchioVisitor := PCompiler new.
	pinocchioVisitor world: self.
	classASTs := Dictionary new