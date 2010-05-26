accessing
suiteAll
	^ TestSuite new in: [ :suite |
		classesSelected do: [ :each | 
			each isAbstract 
				ifFalse: [ each addToSuiteFromSelectors: suite ]].
	].