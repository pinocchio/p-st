exporting
createCFile
	| codeStream new name namedin |
	codeStream := stream.

	stream := self createStream: '/lib/lib.c'.
	self include: 'lib/lib.h'.

	"new := #new asPObject.
	globals add: new.
	self visit: new.
	
	namedin := #named:in: asPObject.
	globals add: namedin.
	self visit: namedin."
	
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

	stream
		<< self root uid << ' = Eval_Send0((Object)Organize_RootPackage_Class, (Type_Symbol)'
		<< #new asPObject uid << ');'; lf.

	packages do: [:package|
	name := package packageName asPObject.
	globals add: name.
	self visit: name.
	stream
		<< package uid << ' = Eval_Send2((Object)Organize_Package_Class, (Type_Symbol)'
		<< #named:in: asPObject uid << ', '  << name uid << ', ' << package parent uid << ');'; lf.
	].

	stream lf; << 'call_initialize();';
		cr; << '}'.
		
	stream close.