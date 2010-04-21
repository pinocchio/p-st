as yet unclassified
exportBasicClasses
	^ (OrderedCollection new)
		add: Object;
		add: Behavior;
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
		add: PRootPackage;
		add: PPackage;
		add: PLayout;
		add: PObjectLayout;
		add: PArrayLayout;
		add: PIntLayout;
		add: PWordsLayout;
		add: PMainInterpreter;
		add: PPlugin;
		add: PWriteFile;
		add: PReadFile;
		add: PUnsintInstVariable;
		add: PLink;
		add: PProcess;
		add: PMessageTally;
		yourself