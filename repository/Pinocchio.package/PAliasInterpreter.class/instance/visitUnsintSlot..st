interpreting
visitUnsintSlot: anUnsintSlot
	| result |
	result := anUnsintSlot readFrom: self currentUnwrappedSelf.
	^ result asAllocationAlias: context