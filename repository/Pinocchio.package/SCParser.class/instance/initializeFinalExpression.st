basic-block
initializeFinalExpression
	^ self expression & ('.' asPEG optional omit: true)