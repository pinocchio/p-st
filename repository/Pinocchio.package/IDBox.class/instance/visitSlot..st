as yet unclassified
visitSlot: aSlot
	uidCounter := uidCounter + 1.
	^ 'slot_', (self idFor: aSlot name), '_', uidCounter asString .