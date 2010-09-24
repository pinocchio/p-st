expecting
be: expected
	^ self check: (value = expected) ifFail: [ :s | 
		s << ': '.
		expected printOn: s ]