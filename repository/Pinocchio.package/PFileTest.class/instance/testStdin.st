as yet unclassified
testStdin
	| char |
	self preventRun: [ ^ self].
	PFile stdout writeAll: 'Please type "c":'.
	char := PFile stdin read.
	PFile stdin read. "read \n"
	char should = $c.
	PFile stdout writeAll: 'Echo test: '.
	char := PFile stdin read.
	PFile stdin read. "read \n"
	PFile stdout write: char.