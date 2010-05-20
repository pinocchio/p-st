initialize-release
initialize
	super initialize.
	root := PRootPackage new.
	done := IdentityDictionary new.
	todo := Set new.
	pcompiler := PCompiler new.
	pcompiler world: self.
	classASTs := Dictionary new