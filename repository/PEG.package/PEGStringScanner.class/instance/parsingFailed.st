failure
parsingFailed
	| longestMatch |
	longestMatch := 0.
	cache withIndexDo: [ :bucket :pos |
		bucket isNil ifFalse: [
			bucket valuesDo: [ :memo |
				longestMatch := longestMatch max:
					(memo x
						ifNil: [ memo y ]
						ifNotNil: [ memo x ])]]].
	position := longestMatch.
	(PEGParsingFailure new input: self) signal