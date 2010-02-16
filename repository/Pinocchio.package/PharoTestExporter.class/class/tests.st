exporting
tests
	| tests |
	tests := OrderedCollection new.
	tests
		add: BridgeTest;
		add: PEGTest;
		add: SCParserTest.
	^ tests.