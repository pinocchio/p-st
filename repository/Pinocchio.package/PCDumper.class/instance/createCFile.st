exporting
createCFile
	| codeStream new name namedin ensureClass ensurePackage initialize |
	codeStream := stream.
	stream := self createStream: '/lib/lib.c'.
	self include: 'lib/lib.h'.
	root packagesDo: [ :package | 
		name := package packageName asPObject.
		globals add: name ].
	globals add: (PSymbol named: #ensureClassReferenceFor:).
	globals add: (PSymbol named: #'initialize').
	globals add: (PSymbol named: #'new').
	globals add: (PSymbol named: #'ensurePackageNamed:').
		
	globals do: [ :global | stream << global ctype << ' ' << global uid asString << ';'; lf ].
	
	stream lf; << 'void call_initialize() {'; lf.
	self visitSymbol: (PSymbol named: #ensureClassReferenceFor:).
	self visitSymbol: (PSymbol named: #'initialize').
	sortedClasses do: [ :pclass | 
		(stream << '    Eval_Send1((Optr)' << pclass package uid << ', SMB_ensureClassReferenceFor_, (Optr)'
				<< pclass uid) << ');'; lf.
		(stream << '    Eval_Send0((Optr)' << pclass uid)
				<< ', SMB_initialize);'; lf ].
	stream << '}'; lf; lf.
	stream lf; << 'void init_lib() {'; lf;
		<< codeStream contents;
		lf.
	
	stream lf; << 'pinocchio_post_init();'; lf; lf.
	self visitSymbol: (PSymbol named: #'new').
	self visitSymbol: (PSymbol named: #'ensurePackageNamed:').
	
	sortedClasses do: [ :pclass | stream << 'init_' << pclass name asString << '_methods();'; lf ].
	stream lf; << root uid; << ' = Eval_Send0((Optr)Organize_RootPackage_Class, SMB_new);'; lf.
	root packagesDo: [ :package | 
		name := package packageName asPObject.
		name accept: self. " Force evaluation since we added it to the globals before. "
		(stream << package uid << ' = Eval_Send1((Optr)' << package parent uid << ', SMB_ensurePackageNamed_, (Optr)'
				<< name uid) << ');'; lf ].
	stream lf; << 'init_plugin();'; lf; << 'call_initialize();'; lf; << '}'; lf.
	stream close.
	
	stream := self createStream: '/lib/VERSION'.
	stream << P currentVersionNumber; lf.
	stream close