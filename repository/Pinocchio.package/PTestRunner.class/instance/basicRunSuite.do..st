processing
basicRunSuite: aTestSuite do: aBlock
	self basicSetUpSuite: aTestSuite.
	[ aTestSuite name isEmptyOrNil
		ifTrue: [ aTestSuite tests do: aBlock ]
		ifFalse: [ aTestSuite tests do: aBlock displayingProgress: aTestSuite name ] ]
			ensure: [ self basicTearDownSuite: aTestSuite ].
	