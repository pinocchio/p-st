private
check: aBool ifFail: block
	(bool = aBool) ifFalse: [
		self warn: ((bool ifFalse: [ 'Didn''t expect' ] ifTrue: [ 'Expected' ]), block value, ' but got: ', value asString).
		self fail.
		].
	^ nil