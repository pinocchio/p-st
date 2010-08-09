pharo-exporting
pInstVarNames
	<preventExport>
	" these variables are used in Object class (and defined in PObject class' pClassVariables) "
	^ OrderedCollection
		with: #name
		with: #package