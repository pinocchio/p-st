testing
isValid
	| status |
	handle ifNil: [^false].
	^ self primStatus > -1