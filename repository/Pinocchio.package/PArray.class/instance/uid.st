pharo-exporting
uid
	<preventExport>
	self isEmpty ifTrue: [ ^ 'empty_Type_Array'].
	^ super uid.