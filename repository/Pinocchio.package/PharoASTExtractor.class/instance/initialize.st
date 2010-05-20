initialize-release
initialize
	super initialize.
	root := PRootPackage new.
	done := IdentityDictionary new.
	todo := OrderedCollection new.
	scparser := SCParser new.
	pcompiler := PCompiler new.
	pcompiler world: self.
	classASTs := Dictionary new