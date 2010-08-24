iterating
packagesDo: aBlock
	aBlock value: self.
	members do: [ :element | element packagesDo: aBlock ]