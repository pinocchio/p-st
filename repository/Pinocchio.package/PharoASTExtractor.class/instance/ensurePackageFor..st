extracting
ensurePackageFor: sclass
	| path |
	Transcript show: sclass pinocchioPackage.
	path := sclass splitCategory.
	^ root ensurePath: path