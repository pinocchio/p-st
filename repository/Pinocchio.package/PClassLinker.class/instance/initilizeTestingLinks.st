as yet unclassified
initilizeTestingLinks
	self link: TestResult to: PTestResult.
	self link: TestSuite  to: PTestSuite.
	self link: TestResource to: PTestResource.
	self link: TestFailure to: PTestFailure.
	self link: ResumableTestFailure to: PResumableTestFailure.