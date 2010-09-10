accessing
findName: aName ifAbsent: block
	| returnBlock |
	returnBlock := [ :value | ^ value ].
	self shortName == aName ifTrue: [ ^ self ].
	self at: aName ifPresent: returnBlock.
	imports at: aName ifPresent: returnBlock.
	^ block value