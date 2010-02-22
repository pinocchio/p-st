initialize-release
initializeGlobals
	<preventExport>
	self globalDefintion do: [ :pair|
		decls at: (pair at: 1)
			put: (PInternalConstant new 
					name: (pair at: 1);
					uid: (pair at: 2))
	]