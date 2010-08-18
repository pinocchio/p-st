initialization
initializeStringConstant
	^ super initializeStringConstant
		semantics: [ :result | ASTString new string: result ]