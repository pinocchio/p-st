testing
isSuccess
	"Is this a successful response?"

	^self code >= 200 and: [self code <= 299]
