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
		
	globals do: [ :global | 
		stream << global ctype << ' ' << (self idFor: global) << ';'; lf ].
	
	stream lf; << 'void call_initialize() {'; lf.
	self visitSymbol: (PSymbol named: #ensureClassReferenceFor:).
	self visitSymbol: (PSymbol named: #'initialize').
	sortedClasses do: [ :pclass | 
		(stream << '    Eval_Send1((Optr)' << (self idFor: pclass package) << ', SMB_ensureClassReferenceFor_, (Optr)'
				<< (self idFor: pclass)) << ');'; lf.
		(stream << '    Eval_Send0((Optr)' << (self idFor: pclass))
				<< ', SMB_initialize);'; lf ].
	stream << '}'; lf; lf; lf;
	 	<< 'void init_lib() {'; lf;
		<< codeStream contents; lf.
	
	stream lf; << 'pinocchio_post_init();'; lf; lf.
	self visitSymbol: (PSymbol named: #'new').
	self visitSymbol: (PSymbol named: #'ensurePackageNamed:').
	
	sortedClasses do: [ :pclass | 
		stream << 'init_' << pclass name asString << '_methods();'; lf ].
	stream lf; << (self idFor: root); << ' = Eval_Send0((Optr)Organize_RootPackage_Class, SMB_new);'; lf.
	root packagesDo: [ :package | 
		name := package packageName asPObject.
		name accept: self. " Force evaluation since we added it to the globals before. "
		(stream << (self idFor: package) << ' = Eval_Send1((Optr)' << (self idFor: package parent) << ', SMB_ensurePackageNamed_, (Optr)'
				<< (self idFor: name)) << ');'; lf ].
	stream lf; << 'init_plugin();'; lf; << 'call_initialize();'; lf; << '}'; lf.
	stream close.
	
	stream := self createStream: '/lib/VERSION'.
	stream << P currentVersionNumber; lf.
	stream close