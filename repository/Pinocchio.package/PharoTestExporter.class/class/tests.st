exporting
tests
	| tests |
	tests := OrderedCollection new.
	tests
	"	add: PDictionaryTest;
		add: PEGTest;
		add: SCParserTest;"
		add: BridgeTest;
		add: PObjectTest;
		add: PCompilerTest.
	^ tests.