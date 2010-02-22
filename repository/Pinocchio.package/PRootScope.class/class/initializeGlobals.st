initialize-release
initializeGlobals
	<preventExport>
	self globalDefintion do: [ :pair|
		decls at: (pair at: 1)
			put: (PInternalConstant new
					uid: (pair at: 2))
	]