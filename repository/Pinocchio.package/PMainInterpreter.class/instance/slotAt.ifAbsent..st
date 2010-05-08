accessing
slotAt: name ifAbsent: block
	name first isUppercase ifFalse: [ PSlotPlaceholder for: name ].
	^ block value