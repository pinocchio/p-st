initialize-release
initialize
	super initialize.
	root := PRootPackage new.
	done := PIdentityDictionary new.
	todo := IdentitySet new.
	pcompiler := PCompiler new.
	pcompiler world: self.
	classASTs := PDictionary new