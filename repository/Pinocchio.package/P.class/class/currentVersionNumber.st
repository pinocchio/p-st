accessing
currentVersionNumber
	^ ('.' split: (MCWorkingCopy forPackage: (MCPackage named: #Pinocchio)) uniqueVersionName) at: 2