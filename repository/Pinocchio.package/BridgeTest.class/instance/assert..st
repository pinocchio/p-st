test-method
assert: bool
	<arg: true>
	^ bool ifFalse: [ self fail. ]
	