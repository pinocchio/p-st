testing
includesSlot: name
	self slotAt: name ifAbsent: [ ^ false ].
	^ true