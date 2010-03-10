error handling
perror: msg
	<renameExport: #error:>
	PFile stderr write: 27 asCharacter; << '[31m'; writeAll: msg; write: 27 asCharacter; << '[0m'; lf.
	self halt.