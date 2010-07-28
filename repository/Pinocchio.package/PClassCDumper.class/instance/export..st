exporting
export: aPClass
	(aPClass isKindOf: PClass)
		ifFalse: [ self error: 'PClassCDumper can only export PClass' ].
	self currentClass: aPClass.
	self createCFile.
	self createHFile