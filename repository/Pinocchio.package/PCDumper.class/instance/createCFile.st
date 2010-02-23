exporting
createCFile
	| codeStream |
	codeStream := stream.

	stream := self createStream: '/lib/lib.c'.
	self include: 'lib/lib.h'.
	
	globals do: [ :global|
		stream << 'Object ' << global uid asString << ';' cr.
	].

	stream cr; << 'void call_initialize() {'; cr.
	self sortedClasses do: [ :pclass|
		stream << '    Eval_Send0((Object)' << pclass uid << ', (Type_Symbol)SMB_initialize);'; cr.
	].
	stream << '}'; cr; cr.
	
	stream cr; << 'void init_lib() {'; 
		cr; << codeStream contents; cr.
	self sortedClasses do: [ :pclass|
		stream << 'init_' << pclass name asString << '_methods();'; cr.
	].
	stream cr; << 'call_initialize();';
		cr; << '}'.
		
	stream close.