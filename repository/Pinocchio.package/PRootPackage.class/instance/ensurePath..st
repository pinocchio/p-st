exporting
ensurePath: aCollection
	| package |
	package := self.
	aCollection do: [ :segment|
		package := package ensurePackageNamed: segment asPSymbol.
	].
	^ package.