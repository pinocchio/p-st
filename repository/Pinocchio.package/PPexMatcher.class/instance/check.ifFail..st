private
check: aBool ifFail: block
	fail := block.
	(bool = aBool) ifFalse: [ self signal ].
	^ nil