convenience
createReference: path
	(path size = 1) ifTrue: [
		^ self createVariable: path first
	].
	^ ASTPath new path: path.