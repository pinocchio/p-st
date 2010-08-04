accessing
unwantedAnnotations
	^ (IdentitySet new)
		add: #primitive:;
		add: #primitive:module:;
		add: #renameExport:;
		yourself