exporting
createCFile
	| codeStream new name namedin |
	codeStream := stream.
	stream := self createStream: '/lib/lib.c'.
	self include: 'lib/lib.h'.
	globals
		do:
			[ :global | 
			(stream << 'Object ' << global uid asString)
				<< ';';
				lf ].
	stream
		lf;
		<< 'void call_initialize() {';
		lf.
	self sortedClasses
		do:
			[ :pclass | 
			(stream << '    Eval_Send1((Object)' << pclass package uid << ', (Type_Symbol)SMB_ensureClassReferenceFor_, (Object)'
				<< pclass uid)
				<< ');';
				lf.
			(stream << '    Eval_Send0((Object)' << pclass uid)
				<< ', (Type_Symbol)SMB_initialize);';
				lf ].
	stream
		<< '}';
		lf;
		lf.
	stream
		lf;
		<< 'void init_lib() {';
		lf;
		<< codeStream contents;
		lf.
	self sortedClasses
		do:
			[ :pclass | 
			(stream << 'init_' << pclass name asString)
				<< '_methods();';
				lf ].
	stream
		lf;
		<< self root uid;
		<< ' = Eval_Send0((Object)Organize_RootPackage_Class, (Type_Symbol)SMB_new);';
		lf.
	packages
		do:
			[ :package | 
			name := package packageName asPObject.
			globals add: name.
			self visit: name.
			(stream << package uid << ' = Eval_Send1(' << package parent uid << ', (Type_Symbol)SMB_ensurePackageNamed_, '
				<< name uid)
				<< ');';
				lf ].
	stream
		lf;
		<< 'init_plugin();';
		lf;
		<< 'call_initialize();'.
	stream
		lf;
		<< '}'.
	stream close