accessing
name: aName
	parser ifNil: [ parser := PEGParser named: aName. ^ self ].
	self shouldNeverHappen.