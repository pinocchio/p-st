as yet unclassified
tests
	| tests |
	tests := OrderedCollection new.
	tests
		"add: PStringTest;
		add: PSymbolTest;
		add: PSetBucketTest;"
		add: PIdentitySetBucketTest";
		add: PDictBucketTest;
		add: PIdentityDictBucketTest;
		add: PSetTest;
		add: PIdentitySetTest;
		add: PDictionaryTest;
		add: PIdentityDictionaryTest.	"
		"add: PEGTest;
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
		add: PFileTest;
		add: PInterpreterTest;"
		.
	^ tests