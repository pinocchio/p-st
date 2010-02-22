testing
testPerformWith
	| result |
	result := self perform: #assertTen: with: 10.
	result should be = 20.