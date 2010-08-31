accessing
classMembers
	^ self select: [ :each | each isKindOf: PClassReference ].