running
testReturn
	| result |
	parser := scparser method.
	result := self ast: 'ret
		^ 1'.
	dumper visit: result.
	Transcript show: dumper