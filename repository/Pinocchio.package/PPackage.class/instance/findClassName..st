accessing
findClassName: aName
	| p |
	self classMembers at: aName ifPresent: [ :value | ^ value ].
	p := parent findName: aName.
	p isNil ifTrue: [ ^ self findPackageName: aName ].
	^ p.