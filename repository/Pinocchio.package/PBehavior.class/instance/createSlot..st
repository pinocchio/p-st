accessing
createSlot: name
	<preventExport>
	^ (PSlot named: name)
		uid: ('instvar_' , self name asSymbol, '_' , name)