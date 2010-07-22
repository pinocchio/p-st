primitives
primWrite: aString
	<pPrimitive: #primWrite: plugin: #'IO.Socket' code: '	
    char * buffer = unicode_to_ascii(((String)#{aString})->value);

    assert(!(write(unwrap_int(${handle}), buffer, strlen(buffer)) == -1),
        fwprintf(stderr, L"Socket failed to write"););

    ^ self;
	'>
	self pinocchioPrimitiveFailed.
	