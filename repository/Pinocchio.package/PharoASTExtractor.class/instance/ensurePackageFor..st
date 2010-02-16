extracting
ensurePackageFor: sclass
	self haltIf: sclass pinocchioPackage = #'SpyCam-Pinocchio-Class'.
	Transcript show: sclass pinocchioPackage.
	^ root ensurePath: ('-' split: sclass pinocchioPackage).