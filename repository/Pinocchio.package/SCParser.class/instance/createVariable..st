convenience
createVariable: name
	name = 'self' ifTrue: [ ^ASTSelf new].
	name = 'super' ifTrue: [ ^ASTSuper new].
	^ ASTVariable new name: name.