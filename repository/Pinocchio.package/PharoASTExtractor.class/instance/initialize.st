initialize-release
initialize
	super initialize.
	root := PRootPackage new.
	done := IdentityDictionary new.
	todo := IdentitySet new.
	pcompiler := PCompiler new.
	pcompiler world: self.
	classASTs := PDictionary new