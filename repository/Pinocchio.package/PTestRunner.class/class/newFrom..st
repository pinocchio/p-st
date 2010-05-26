initialize-release
newFrom: testCases
	^ self new
		addTests: testCases;
		yourself.