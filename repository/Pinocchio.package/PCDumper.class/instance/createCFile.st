exporting
createCFile
	| codeStream |
	codeStream := stream.

	stream := self createStream: '/lib/lib.c'.
	self include: 'lib/lib.h'.
	
	globals do: [ :global|
		stream nextPutAll: 'Object ';
			nextPutAll: global uid asString;
			nextPutAll: ';'; cr.
	].

	stream cr;
		nextPutAll: 'void init_lib() {'; cr.
	
	stream nextPutAll: codeStream contents; cr.
	
	self sortedClasses do: [ :pclass|
		stream nextPutAll: 'init_';
			nextPutAll: pclass name asString;
			nextPutAll: '_methods();'; cr.
	].
	stream nextPutAll: '}'.
	stream close.