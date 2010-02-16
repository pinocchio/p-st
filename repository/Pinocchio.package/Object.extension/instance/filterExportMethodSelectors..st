*Pinocchio
filterExportMethodSelectors: anArray 
	^ anArray select: [ :each|
		(self methodDict at: each) pragmas allSatisfy: [ :pragma|
			pragma keyword ~= #preventExport
		].
	].