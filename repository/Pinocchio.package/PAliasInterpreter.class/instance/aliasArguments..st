aliasing
aliasArguments: aMessage
	aMessage withIndexDo: [ :arg :index | aMessage at: index put: (PParameterAlias alias: arg) ]