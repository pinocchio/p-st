initialization
initializeBlock
	^ super initializeBlock
		semantics: [ :result |
			result size = 1
				ifTrue: [
					result add: PEGFailedOptionalResult.
					result add: OrderedCollection new ].
			(ASTBlock new)
				parameters: (result first resultIfFailed: [ Array new ]);
				temporaries: ((result at: 2) resultIfFailed: [ Array new ]);
				statements: (result at: 3) ]