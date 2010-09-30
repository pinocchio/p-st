visitor
visitVariable: anASTVariable
	(scope lookup: anASTVariable) ifNotNil: [ :value | ^ value ].
	anASTVariable name first isUppercase ifFalse: [
		^ PUndefinedVariable new
			target: pinocchioClass;
			method: currentMethod; 
			variable: anASTVariable;
			signal ].
	^ self scope
		declare: anASTVariable name
		as: (pinocchioClass package
					findName: anASTVariable name
					ifAbsent: [ self world ensureClassReference: anASTVariable name ]) asNode