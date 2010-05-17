pharo-exporting
uid
	<preventExport>
	self isEmpty
		ifTrue: [ ^ 'empty_Collection_Array' ].
	^ super uid