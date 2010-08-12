accessing
exportBasicClasses
	^ (OrderedCollection new)
		add: Object;
		add: Behavior;
		add: PThread;
		add: Metaclass;
		add: Class;
		add: PMessage;
		add: PTrue;
		add: PFalse;
		add: PNil;
		add: PString;
		add: PSymbol;
		add: PSmallInt;
		add: PBlockClosure;
		add: PContinue;
		add: PCharacter;
		add: PCharacterTable;
		add: PRootPackage;
		add: PPackage;
		add: PLayout;
		add: PObjectLayout;
		add: PArrayLayout;
		add: PIntLayout;
		add: PWordsLayout;
		add: PPlugin;
		add: PWriteFile;
		add: PReadFile;
		add: PUIntSlot;
		add: PPointerSlot;
		add: PLink;
		add: PProcess;
		add: PAssertionFailure;
		add: PRecursiveDoesNotUnderstand;
		add: PUndefinedClassReference;
		add: PDebugger;
		add: PParallelDebugger;
		add: PMainInterpreter;
		add: PTerminal;
		add: PTests;
		add: PCLITestRunner;
		add: PPexMatcher;
		add: PSocket;
		add: ConnectionClosed ;
		add: NetworkError ;
		"add: PSmallIntTest;"
		"add: PACContextInterpreter;"
		yourself