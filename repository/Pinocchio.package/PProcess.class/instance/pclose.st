private
pclose
	<pPrimitive: #pclose plugin: #'IO.Process' code: '
    IO_File stream  = (IO_File)((Type_Object)self)->ivals[2];
    int returnValue = pclose(stream->file);
    ^ new_Type_SmallInt(returnValue);
'>
	self pinocchioPrimitiveFailed.