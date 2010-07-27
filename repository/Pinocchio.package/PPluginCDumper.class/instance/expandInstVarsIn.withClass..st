convenience
expandInstVarsIn: strippedLine withClass: aPClass
	| editedLine |
	editedLine := strippedLine.
	aPClass layout do: [ :pInstVar|
		editedLine := editedLine copyReplaceAll: '${', (pInstVar name),'}'
								with:  'SELF->ivals[',(pInstVar index asString), ']'.].
	^ editedLine