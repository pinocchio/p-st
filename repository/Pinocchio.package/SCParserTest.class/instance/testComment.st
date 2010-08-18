tests
testComment
	| parser |
	parser := PEGMultiParser named: 'COMMENT' parsing: scparser commentFormat.
	(parser parse: '"Test"') should not be isNil.
	[ parser parse: '"Test' ] should signal: PEGParsingFailure