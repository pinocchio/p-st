exporting
createCFile
	| codeStream |
	codeStream := stream.

	stream := self createStream: '/lib/lib.c'.
	self include: 'lib/lib.h'.
	
	globals do: [ :global|
		stream << 'Object ' << global uid asString << ';'; lf.
	].

	stream lf; << 'void call_initialize() {'; lf.
	self sortedClasses do: [ :pclass|
		stream << '    Eval_Send0((Object)' << pclass uid << ', (Type_Symbol)SMB_initialize);'; lf.
	].
	stream << '}'; lf; lf.
	
	stream lf; << 'void init_lib() {'; 
		cr; << codeStream contents; lf.
	self sortedClasses do: [ :pclass|
		stream << 'init_' << pclass name asString << '_methods();'; lf.
	].
	stream lf; << 'call_initialize();';
		cr; << '}'.
		
	stream close.