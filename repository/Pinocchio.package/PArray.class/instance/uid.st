pharo-exporting
uid
	<preventExport>
	self isEmpty
		ifTrue: [ ^ 'empty_Array' ].
	^ super uid