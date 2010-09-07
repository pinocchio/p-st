initialize-release
initializeGlobals
	<preventExport>
	self globalDefinition do: [ :pair | 
		decls at: (pair at: 1) 
			put: (PInternalConstant new
						constant: (pair at: 2)) ]