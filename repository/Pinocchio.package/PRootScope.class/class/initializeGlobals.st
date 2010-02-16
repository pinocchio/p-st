initialize-release
initializeGlobals
	self globalDefintion do: [ :pair|
		decls at: (pair at: 1)
			put: (PInternalVariable new 
					name: (pair at: 1);
					uid: (pair at: 2))
	]