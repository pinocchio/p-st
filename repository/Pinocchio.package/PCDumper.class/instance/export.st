exporting
export
	| sorter |
	self clearDirectory: self sourcePath , 'lib/class'.
	
	sorter := PClassTopSorter new.
	sorter visitRootPackage: self root.
	self sortedClasses: sorter sortedClasses.
	self classReferences: sorter classReferences.
	
	self exportClasses.
	self visit: self root.
	self createCFile.
	self createHFile.
	
	(visitedNodes select: [ :el | el isKindOf: PSlot ]) inspect.

	self exportPlugins.