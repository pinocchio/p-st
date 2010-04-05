private
popen
	<pPrimitive: #popen plugin: #'IO.Process' code: '
	//TODO typecheck
    Type_Object process = (Type_Object) self;
    char * command      = unicode_to_ascii(((Type_String)${command})->value);
    char * mode         = unicode_to_ascii(((Type_Symbol)${mode})->value);
    FILE * stream       = popen(command, mode);
    assert(stream,
        fprintf(StandardError->file,
            "%s (program: ''%s'', mode: ''%s'')\n",
            strerror(errno), command, mode););
    ${out}  = (Object)new_IO_ReadFile_from(stream);
    ${in}   = (Object)new_IO_WriteFile_from(stream);
    ^ self;
	'>
	self pinocchioPrimitiveFailed
	