testing
isRedirect
	"Is this a redirect response?"

	^self code >= 300 and: [self code <= 399]
