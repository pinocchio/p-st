expecting
be: expected
	^ self check: (value = expected) ifFail: [ ': ', expected ]