error handling
perror: msg
	<renameExport: #error:>
	self warn: msg.
	self printStacktrace.
	self shell.
	self halt