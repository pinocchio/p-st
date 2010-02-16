exporting
createTestCases
	self methods do: [:method|
		self createTestCaseFor: method.
	]