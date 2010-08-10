exporting
createCFile
	| codeStream new name namedin ensureClass ensurePackage initialize fileStream |
	codeStream := stream.
	stream := PIndentableWriteStream on: (String new: 10000).
	self include: 'lib/lib.h'.
	
	root packagesDo: [ :package | 
		name := package packageName asPObject.
		self addGlobal: name ].
	self addGlobal: (PSymbol named: #ensureClassReferenceFor:).
	self addGlobal: (PSymbol named: #'initialize').
	self addGlobal: (PSymbol named: #'new').
	self addGlobal: (PSymbol named: #'ensurePackageNamed:').
		
	self exportGlobalsForCFile.
	
	stream lf; << 'void call_initialize() {'; lf.
	self visitSymbol: (PSymbol named: #ensureClassReferenceFor:).
	self visitSymbol: (PSymbol named: #'initialize').
	sortedClasses do: [ :pclass | 
		(stream << '    Eval_Send1((Optr)' << (self idFor: pclass package) << ', SMB_ensureClassReferenceFor_, (Optr)'
				<< (self idFor: pclass)) << ');'; lf.
		(stream << '    Eval_Send0((Optr)' << (self idFor: pclass))
				<< ', SMB_initialize);'; lf ].
	stream << '}'; lf; lf; lf.
	
	stream 	<< 'void init_lib() {'; lf;
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
	
	fileStream := self createStream: '/lib/lib.c'.
	fileStream << stream.
	fileStream close.
	
	"stream := self createStream: '/lib/VERSION'.
	stream << P currentVersionNumber; lf.
	stream close"