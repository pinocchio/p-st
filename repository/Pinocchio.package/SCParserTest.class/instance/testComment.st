tests
testComment
	| parser |
	parser := PEGParser named: 'COMMENT' parsing: scparser commentFormat.
	(parser parse: '"Test"') should not be isNil.
	(parser parse: '"Test') should be isNil