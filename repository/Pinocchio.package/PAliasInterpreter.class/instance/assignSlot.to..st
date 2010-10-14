assigning
assignSlot: anSlot to: anAlias
	| alias |
	alias := PFieldWriteAlias alias: anAlias.
	alias context: context.
	alias predecessor: (anSlot readFrom: self currentUnwrappedSelf).
	^ anSlot assign: alias on: self currentUnwrappedSelf