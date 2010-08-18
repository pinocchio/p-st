as yet unclassified
tests
	| tests |
	tests := OrderedCollection new.
	tests
		add: PStringTest;
		add: PSymbolTest;
		add: PAliasInterpreterTest;
		add: PContinuationTest;
		add: PContinueTest;
		add: PParallelDebuggerTest;
		add: PSetTest;
		add: PIdentitySetTest;
		add: PDictionaryTest;	
		add: PIdentityDictionaryTest;
		add: PEGTest;
		add: BridgeTest;
		add: PSmalltalkParserTest;
		add: PCompilerTest;
		add: PBlockTest;
		add: PArrayTest;
		add: PBooleanTest;
		add: PCharacterTest;
		add: PNilTest;
		add: PObjectTest;
		add: PSmallIntTest;
		add: PFileTest;
		add: PInterpreterTest;
		add: PObjectTest;
		add: PSmallIntTest;
		add: PStringTest;
		add: PSymbolTest;
		yourself.
	^ tests