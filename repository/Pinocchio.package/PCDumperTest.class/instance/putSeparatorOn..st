test-source-output
putSeparatorOn: outStream
	outStream
		lf;
		lf;
		nextPutAll: '/* ========================================================================= */';
		cr;
		lf