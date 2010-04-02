accessing
canRead
	^ (self mode = #r) or: [ self canReadAndWrite ].