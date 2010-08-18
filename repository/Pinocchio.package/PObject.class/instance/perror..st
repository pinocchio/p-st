error handling
perror: message
	<renameExport: #error:>
	^ PError new
		message: message;
		signal