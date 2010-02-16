exporting
export: aPRootPackage 
	| sorter |
	progress := 0.
	(aPRootPackage isKindOf: PRootPackage) ifFalse: [
		self error: 'Can Only Export Root Packages'.
	].
	
	self root: aPRootPackage.
	self clear.
	self clearDirectory: self sourcePath, 'lib/class'.
	
	sorter := PClassTopSorter new.
	sorter visitRootPackage: self root.
	self sortedClasses: sorter sortedClasses.
	self classReferences: sorter classReferences.
	
	self exportClasses.
	self visit: aPRootPackage.
	
	self createCFile.
	self createHFile.
