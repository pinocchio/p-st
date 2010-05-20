exporting
exportClass: pClass
	self declareClass: pClass.	"Just export classes from the restrictionSet, if given"
	(restrictionSet isEmpty or: [ restrictionSet includes: pClass sclass ])
		ifFalse: [ ^ nil ].
	PClassCDumper export: pClass for: self