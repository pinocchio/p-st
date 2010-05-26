accessing
suiteFailures
	^ TestSuite new in: [ :suite |
		suite addTests: failedList
	].