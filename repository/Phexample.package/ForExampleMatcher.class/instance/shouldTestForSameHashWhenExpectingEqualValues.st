examples-expecting
shouldTestForSameHashWhenExpectingEqualValues
	| factory probe p |
	factory := ClassFactoryForTestCase new.
	probe := factory 
		newSubclassOf: Object 
		instanceVariableNames: 'counter'
		classVariableNames: ''.
	probe compile: 'initialize counter := 0'.
	probe compile: 'hash ^counter := counter + 1'.
	probe compile: 'printOn: stream stream nextPutAll: ''probe'''.
	p := probe new.
	p hash should = 1.
	p hash should = 2.
	p hash should = 3.
	[ p should = p ] should signal: TestFailure
		withMessageText: 'expected same hash for probe and probe (using hash implied by =)'.
	[ p should not ~= p ] should signal: TestFailure 
		withMessageText: 'expected same hash for probe and probe (using hash implied by =)'.
	factory cleanUp.

