iterating
packagesDo: aBlock
	members do: [ :element | element packagesDo: aBlock ]