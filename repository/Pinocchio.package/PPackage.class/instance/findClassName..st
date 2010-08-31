accessing
findClassName: aName
	self classMembers at: aName ifPresent: [ :value | ^ value ].
	^ parent findName: aName ifAbsent: [ self findPackageName: aName ]