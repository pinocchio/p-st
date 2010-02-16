pharo-exporting
asPClass
	<preventExport>
	self = PBehavior ifFalse: [ ^ super asPClass ].
	^ Behavior asPClass.