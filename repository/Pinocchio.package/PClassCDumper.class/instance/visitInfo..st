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
	self put: aPInfo with: [ :s| 
			s << 'new_Info(' << (self idFor: sourceFile) << ', ' 
							<< (self idFor: name) << ', ' 
							<< (self idFor: line) << ', ' 
							<< (self idFor: column) << $)].