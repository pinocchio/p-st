exporting
exportClass: pClass
	| pclassDumper |
	self declareClass: pClass.
	pclassDumper := PClassCDumper new.
	pclassDumper export: pClass.