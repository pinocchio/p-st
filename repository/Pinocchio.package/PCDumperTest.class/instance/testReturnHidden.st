running
testReturnHidden
	| result |
	parser := scparser method.
	result := self ast: 'ret
		true ifFalse: [^ 1]  
			  ifFalse: [^ 2]'.
	dumper visit: result.
	Transcript show: dumper