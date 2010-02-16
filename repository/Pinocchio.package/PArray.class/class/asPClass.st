pharo-exporting
asPClass 
	<preventExport>
	self = PArray ifFalse: [ ^ super asPClass ].
	^ Array asPClass
	