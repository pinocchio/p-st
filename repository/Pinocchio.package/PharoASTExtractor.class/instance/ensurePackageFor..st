extracting
ensurePackageFor: sclass
	Transcript show: sclass pinocchioPackage.
	^ root ensurePath: ('-' split: sclass pinocchioPackage).