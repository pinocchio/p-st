exporting
createTestCases
	self methods do: [:method|
		self createTestCaseForSelector: method.
	]