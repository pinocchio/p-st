as yet unclassified
pClassInstVarNames
	<preventExport>
	| variables |
	variables := OrderedCollection withAll: super pClassInstVarNames.
	variables add: #instance.
	^ variables