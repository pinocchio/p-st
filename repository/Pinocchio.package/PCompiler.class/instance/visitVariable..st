visitor
visitVariable: anASTVariable
	(scope lookup: anASTVariable) ifNotNilDo: [ :value | ^ value ].
	anASTVariable name first isUppercase
		ifFalse: [ self error: 'Lookup failed. Undefined Variable: ''' , anASTVariable name , '''' ].
	^ self scope
		declare: anASTVariable
		as:
			((pinocchioClass package findName: anASTVariable name)
				ifNil: [ self world ensureClassReference: anASTVariable name ]) asNode