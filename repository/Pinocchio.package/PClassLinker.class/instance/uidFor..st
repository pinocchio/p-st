as yet unclassified
uidFor: aPClass
	^ classNames
		at: aPClass
		ifAbsentPut: [ (self typeNameFor: aPClass) asSymbol ]