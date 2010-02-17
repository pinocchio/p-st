exporting
tests
	| tests |
	tests := OrderedCollection new.
	tests
		add: PDictionaryTest;
		add: BridgeTest;
		add: PEGTest;
		add: SCParserTest.
	^ tests.