exporting
tests
	| tests |
	tests := OrderedCollection new.
	tests
	"	add: PDictionaryTest;
		add: PEGTest;
		add: BridgeTest;
		add: SCParserTest;"
		add: PObjectTest;
		add: PCompilerTest.
	^ tests.