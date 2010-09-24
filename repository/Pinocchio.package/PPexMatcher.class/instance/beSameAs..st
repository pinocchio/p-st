expecting-reflection
beSameAs: expected
	^ self check: value == expected ifFail: [ :s |
		s << ' pointer-equal value to: '.
		expected printOn: s ].