accessing
packageMembers
^ members select: [ :each | each isKindOf: PRootPackage ].