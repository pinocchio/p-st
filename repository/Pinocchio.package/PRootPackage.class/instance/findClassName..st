accessing
findClassName: aName
	self classMembers at: aName ifPresent: [ :value | ^ value ].
	^ self findPackageName: aName.