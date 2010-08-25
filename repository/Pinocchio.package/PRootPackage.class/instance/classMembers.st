accessing
classMembers
^ members select: [ :each | each isKindOf: PClassReference ].