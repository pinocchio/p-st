exporting
export
	| sorter |
	self clearDirectory: self sourcePath , 'lib/class'.
	
	sorter := PClassTopSorter new.
	sorter visitRootPackage: root.
	sortedClasses := sorter sortedClasses.
	classReferences := sorter classReferences.
	
	self exportClasses.
	self visit: root.
	self createCFile.
	self createHFile.
	
	(visitedNodes select: [ :el | el isKindOf: PSlot ]) inspect.

	self exportPlugins.