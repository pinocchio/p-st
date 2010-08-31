iterating
packagesDo: aBlock
	self do: [ :element | element packagesDo: aBlock ]