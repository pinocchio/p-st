initialize-release
pinitializeGlobals
	<renameExport: #initializeGlobals>
	self globalDefinition do: [ :pair | decls at: (pair at: 1) put: (pair at: 2) ]