visiting
visitSlot: aSlot
	currentClass ifNil: [
		uidCounter := uidCounter + 1.
		^ 'slot_', (self rawSymbolIdFor: aSlot name), '_', uidCounter asString ].
	^ 'slot_', currentClass name, '_', (self rawSymbolIdFor: aSlot name).