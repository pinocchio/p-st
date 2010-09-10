accessing
findName: aName ifAbsent: block
	| returnBlock |
	returnBlock := [ :value | ^ value ].
	self at: aName ifPresent: returnBlock.
	name == aName ifTrue: [ ^ self ].
	imports at: aName ifPresent: returnBlock.
	^ parent findName: aName ifAbsent: block