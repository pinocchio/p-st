*Pinocchio
asPClass
	<preventExport>
	self = Metaclass
		ifFalse: [ ^ PMetaclass newWith: self ].
	^ super asPClass