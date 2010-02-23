exporting
exportClass: pClass
	| pclassDumper |
	self declareClass: pClass.
	
	"Just export classes from the restrictionSet, if given"
	(restrictionSet isEmpty or: [restrictionSet includes: pClass sclass])
		ifFalse: [ ^ nil].
	
	pclassDumper := PClassCDumper new.
	pclassDumper export: pClass.