removing
erase
	outStream <<
		(termcap parm: '1' in:
			(termcap getstr: 'ec'))