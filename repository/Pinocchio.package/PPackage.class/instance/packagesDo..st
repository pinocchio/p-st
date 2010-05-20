iterating
packagesDo: aBlock
	aBlock value: self.
	members valuesDo: [ :element | element packagesDo: aBlock ]