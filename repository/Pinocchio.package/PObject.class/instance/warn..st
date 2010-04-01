error handling
warn: msg
	(PFile stderr)
		write: 27 asCharacter;
		<< '[31m';
		<< msg;
		write: 27 asCharacter;
		<< '[0m';
		lf.