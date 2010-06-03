running
run
	tests do: [:testCaseClass|
		self testRunner runSuite: testCaseClass buildSuite.
	].