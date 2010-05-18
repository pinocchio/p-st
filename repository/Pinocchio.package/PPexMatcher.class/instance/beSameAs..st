expecting-reflection
beSameAs: expected
	^ self check: value == expected ifFail: [ ' pointer-equal value to: ', expected ].