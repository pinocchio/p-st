error handling
perror: msg
	<renameExport: #error:>
	self warn: msg.
	self halt