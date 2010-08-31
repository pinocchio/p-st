iterating
packagesDo: aBlock
	aBlock value: self.
	self do: [ :element | element packagesDo: aBlock ]