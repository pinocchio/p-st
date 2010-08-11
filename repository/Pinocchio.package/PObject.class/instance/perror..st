error handling
perror: msg
	<renameExport: #error:>
	(PFile stderr)
		write: 27 asCharacter;
		<< '[31m';
		<< msg;
		write: 27 asCharacter;
		<< '[m';
		lf.
	self halt