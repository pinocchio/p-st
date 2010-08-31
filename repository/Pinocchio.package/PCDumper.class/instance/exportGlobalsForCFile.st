exporting
exportGlobalsForCFile
	fileGlobals do: [ :global | 
		stream << global ctype << $  << (self idFor: global) << $;; lf ].