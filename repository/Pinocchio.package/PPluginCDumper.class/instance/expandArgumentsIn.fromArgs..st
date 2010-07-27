convenience
expandArgumentsIn: strippedLine fromArgs: aCollection
	| editedLine |
	editedLine := strippedLine.
	aCollection do: [ :indexName|
		editedLine := editedLine copyReplaceAll: '#{', (indexName y),'}'
								with:  'NATIVE_ARG(',((indexName x -1) asString), ')'.
		editedLine := editedLine copyReplaceAll: '#', (indexName y) 
								with:  'NATIVE_ARG(',((indexName x -1) asString), ')'.].
	^ editedLine