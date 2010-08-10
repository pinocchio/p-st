pharo-exporting
pInstVarNames
	" these variables are used in Object class (and defined in PObject class' pClassVariables) "
	<preventExport>
	^ OrderedCollection
		with: #layout
		with: #superclass
		with: #methods