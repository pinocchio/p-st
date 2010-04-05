exporting
export: aPRootPackage
	(aPRootPackage isKindOf: PRootPackage)
		ifFalse: [ self error: 'Can Only Export Root Packages' ].
	self root: aPRootPackage.
	self export.