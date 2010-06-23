expecting
= expected
	^ self check: (value = expected) ifFail: [ ': ', expected asString]