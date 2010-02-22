initialize-release
pinitializeGlobals
	<renameExport: #initializeGlobals>
	self globalDefintion do: [ :pair|
		decls at: (pair at: 1)
			put: (pair at: 2)
	]