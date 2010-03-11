visitor
visitKeywordAnnotation: anASTKeywordAnnotation 
	| annotation arguments |
	annotation := PAnnotation new: anASTKeywordAnnotation arguments size.
	annotation selector: (self visit: anASTKeywordAnnotation selector).
	arguments := self acceptOnCollection: anASTKeywordAnnotation arguments.
	arguments withIndexDo: [ :object :index | annotation at: index put: (self unwrapConstant: object) ].
	^ annotation