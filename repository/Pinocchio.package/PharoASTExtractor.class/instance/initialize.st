initialize-release
initialize
	super initialize.
	root := PRootPackage new.
	done := PIdentityDictionary new.
	todo := PIdentitySet new.
	pcompiler := PCompiler new.
	pcompiler world: self