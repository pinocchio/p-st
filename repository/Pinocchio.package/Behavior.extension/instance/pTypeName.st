*Pinocchio
pTypeName
	| pinocchioPackage |
	pinocchioPackage := self pinocchioPackage.
	pinocchioPackage size == 0 ifTrue: [
		^ self pinocchioName].
	^ pinocchioPackage, '_', self pinocchioName.