extracting
ensurePackageFor: sclass
	| path |
	Transcript show: sclass pinocchioPackage.
	path := '-' split: sclass pinocchioPackage.
	path removeFirst.
	^ root ensurePath: path