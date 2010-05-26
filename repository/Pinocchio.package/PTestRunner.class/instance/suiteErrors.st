accessing
suiteErrors
	^ TestSuite new in: [ :suite |
		suite addTests: errorList 
	].