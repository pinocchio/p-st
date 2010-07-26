primitives
primClose
	<pPrimitive: #primClose plugin: #'IO.Socket' code: '	   
	close(unwrap_int(${handle}));
    ^ self;
	'>
	self pinocchioPrimitiveFailed.
	