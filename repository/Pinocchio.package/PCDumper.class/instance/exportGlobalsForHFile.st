exporting
exportGlobalsForHFile
	fileGlobals do: [ :global | 
			stream << 'extern ' << global ctype << ' '<< (self idFor: global) << ';'; lf ].