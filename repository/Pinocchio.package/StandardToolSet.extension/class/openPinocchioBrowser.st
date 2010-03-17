*Pinocchio
openPinocchioBrowser
	| packageNames env |
	packageNames := (Array with: #Pinocchio with: #PEG).
	env := PackageEnvironment onEnvironment: BrowserEnvironment new packageNames: packageNames.
	env label: #Pinocchio.
	env browserInstance open.