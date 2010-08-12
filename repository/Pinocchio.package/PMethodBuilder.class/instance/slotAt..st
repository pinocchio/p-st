accessing
slotAt: name
	^ host layout slotAt: name ifAbsent: [ self raiseSlotUndeclared: name ]