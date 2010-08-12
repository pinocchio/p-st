pharo-exporting
pinocchioName
	<preventExport>
	^ (self name copyFrom: 'p' size + 1 to: self name size) capitalized asSymbol