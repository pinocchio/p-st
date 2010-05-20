exporting
export: aPClass
	(aPClass isKindOf: PClass)
		ifFalse: [ self error: 'PClassCDumper can only export PClass' ].
	self pclass: aPClass.
	self createCFile.
	self createHFile