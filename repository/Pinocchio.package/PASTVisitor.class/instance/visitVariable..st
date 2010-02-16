visitor
visitVariable: anASTVariable
	(scope lookup: anASTVariable) ifNotNilDo: [:value| ^ value].
	anASTVariable name first isUppercase ifFalse: [ 
		self error: ('Lookup failed. Undefined Variable: ''', anASTVariable name, '''').
	].
	^ self scope declare: anASTVariable 
			as: (self world ensureClassReferenceForName: anASTVariable name).
	