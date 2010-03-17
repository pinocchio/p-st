exporting
tests
	| tests |
	tests := OrderedCollection new.
	tests
		add: PEGTest;
		add: BridgeTest;
		add: SCParserTest;
		add: PCompilerTest;
		add: PBlockTest;
		add: PArrayTest;
		add: PBooleanTest;
		add: PCharacterTest;
		add: PNilTest;
		add: PObjectTest;
		add: PSmallIntTest;
		add: PStringTest;
		add: PSymbolTest;
		add: PFileTest;
		add: PSetBucketTest;
		add: PDictBucketTest;
		add: PSetTest;
		add: PDictionaryTest.
	^ tests.