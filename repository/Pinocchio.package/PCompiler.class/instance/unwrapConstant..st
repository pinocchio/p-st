visitor
unwrapConstant: aConstant
	(aConstant isKindOf: PConstant) ifFalse: [ self error: 'Constant expected' ].
	^ aConstant constant