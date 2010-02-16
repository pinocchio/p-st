visitor
visitInfo: aPInfo
	self visit: aPInfo name. 
	self visit: aPInfo sourceFile.
	self visit: aPInfo line.
	self visit: aPInfo column.
	self put: aPInfo
		with: 'new_AST_Info((Type_String)', aPInfo sourceFile uid,
							',(Type_String)', aPInfo name uid,
							', (Type_SmallInt)', aPInfo line uid,
							', (Type_SmallInt)', aPInfo column uid, ')' 