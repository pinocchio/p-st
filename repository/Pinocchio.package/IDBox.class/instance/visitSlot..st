as yet unclassified
visitSlot: aSlot
	currentClass ifNil: [
		uidCounter := uidCounter + 1.
		^ 'slot_', (self idFor: aSlot name), '_', uidCounter asString ].
	^ 'slot_', currentClass name asString, '_', (self idFor: aSlot name).