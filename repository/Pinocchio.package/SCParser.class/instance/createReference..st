convenience
createReference: path
	| name |
	path size = 1
		ifTrue:
			[ name := path first.
			name = 'self'
				ifTrue: [ ^ ASTSelf new ].
			name = 'super'
				ifTrue: [ ^ ASTSuper new ].
			^ ASTVariable new name: name ].
	^ ASTPath new path: path