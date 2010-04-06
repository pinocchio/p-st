assigning
assignInstVariable: anInstVariable to: anAlias
	| alias |
	alias := PFieldWriteAlias alias: anAlias.
	alias predecessor: (anInstVariable readFrom: self currentUnwrappedSelf).
	^ anInstVariable assign: alias on: self currentUnwrappedSelf