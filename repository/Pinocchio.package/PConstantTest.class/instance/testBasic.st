as yet unclassified
testBasic
	| const |
	""
	const := PConstant new: self.
	const constant should be = self.
	