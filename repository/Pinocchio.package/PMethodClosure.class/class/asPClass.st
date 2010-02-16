pharo-exporting
asPClass 
	<preventExport>
	self = PMethodClosure  ifFalse: [ ^ super PMethodClosure ].
	self halt.