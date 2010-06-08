visitor
visitInfo: aPInfo
	| name sourceFile line column |
	name := aPInfo name asPObject.
	sourceFile := aPInfo sourceFile asPObject.
	line := aPInfo line asPObject.
	column := aPInfo column asPObject.
	self visit: name.
	self visit: sourceFile.
	self visit: line.
	self visit: column.
	self
		put: aPInfo
		with:
			'new_AST_Info((String)' , sourceFile uid , ',(String)' , name uid , ', (SmallInt)' , line uid
				, ', (SmallInt)' , column uid , ')'