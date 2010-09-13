testing
isInformational
	"Is this a 1xx response?"

	^self code >= 100 and: [self code <= 199]
