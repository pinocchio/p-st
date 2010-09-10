accessing
findName: aName ifAbsent: block
	| returnBlock |
	returnBlock := [ :value | ^ value ].
	name == aName ifTrue: [ ^ self ].
	self at: aName ifPresent: returnBlock.
	imports at: aName ifPresent: returnBlock.
	^ parent findName: aName ifAbsent: block