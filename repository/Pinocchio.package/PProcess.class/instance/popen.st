private
popen
	<pPrimitive: #popen plugin: #'IO.Process' code: '
    char * command      = unicode_to_ascii(((String)${command})->value);
    char * mode         = unicode_to_ascii(((Symbol)${mode})->value);
    FILE * stream       = popen(command, mode);
    assert(stream, fwprintf(stderr,
            				L"%s (program: ''%s'', mode: ''%s'')\n",
            				strerror(errno), command, mode););
    ${out}  = (Optr)new_IO_ReadFile_from(stream);
    ${in}   = (Optr)new_IO_WriteFile_from(stream);
	^self;
	'>
	self pinocchioPrimitiveFailed
	