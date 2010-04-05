exporting
export
	| sorter |
	self clear.
	self clearDirectory: self sourcePath , 'lib/class'.
	
	sorter := PClassTopSorter new.
	sorter visitRootPackage: self root.
	self sortedClasses: sorter sortedClasses.
	self classReferences: sorter classReferences.
	
	self exportClasses.
	self visit: self root.
	self createCFile.
	self createHFile.
	
	self exportPlugins.