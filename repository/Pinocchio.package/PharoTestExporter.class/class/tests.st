exporting
tests
	| tests |
	tests := OrderedCollection new.
	tests
	"	add: PDictionaryTest;
		add: PEGTest;
		add: BridgeTest;
		add: SCParserTest;"
		add: PBlockTest;
		add: PArrayTest;
		add: PBooleanTest;
		add: PCharacterTest;
		add: PNilTest;
		add: PObjectTest;
		add: PSmallIntTest;
		add: PStringTest;
		add: PSymbolTest;
		add: PCompilerTest.
	^ tests.