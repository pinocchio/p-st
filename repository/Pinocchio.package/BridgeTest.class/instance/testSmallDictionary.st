as yet unclassified
testSmallDictionary
	| a |
	a := SmallDictionary new.
	a at: 10 put: 2.
	a at: 20 put: 50.
	a at: 15 put: 3.
	a at: 50 put: 100.
	self assert: (a at: 10) = 2.
	self assert: (a at: 15) = 3.
	self assert: (a at: 20) = 50.
	self assert: (a at: 50) = 100.