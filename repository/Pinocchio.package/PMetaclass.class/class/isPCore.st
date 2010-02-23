*Pinocchio
isPCore
	self = PMetaclass ifFalse: [ ^ super isPCore ].
	^ true