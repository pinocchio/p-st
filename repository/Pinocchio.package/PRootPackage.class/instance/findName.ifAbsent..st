accessing
findName: aName ifAbsent: block
	| returnBlock |
	returnBlock := [ :value | ^ value ].
	self at: aName ifPresent: returnBlock.
	self shortName == aName ifTrue: [ ^ self ].
	imports at: aName ifPresent: returnBlock.
	^ block value