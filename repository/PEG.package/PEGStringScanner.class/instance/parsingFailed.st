failure
parsingFailed
	position := longestMatch.
	PEGParsingFailure new
		input: self;
		signal