exporting
export: aPRootPackage
	(aPRootPackage isKindOf: PRootPackage)
		ifFalse: [ self error: 'Can only export root packages' ].
	self root: aPRootPackage.
	self export.