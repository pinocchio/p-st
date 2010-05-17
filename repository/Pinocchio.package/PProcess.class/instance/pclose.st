private
pclose
	<pPrimitive: #pclose plugin: #'IO.Process' code: '
    IO_File stream  = (IO_File)${in};
    if (!stream) {
        stream = (IO_File)${out};	
    }
    int returnValue = pclose(stream->file);
    ^ new_Number_SmallInt(returnValue);
	'>
	self pinocchioPrimitiveFailed.