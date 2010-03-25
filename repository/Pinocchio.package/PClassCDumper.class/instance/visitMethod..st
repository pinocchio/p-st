visitor
visitMethod: aPMethod
	| params locals annotations |
	"self createMethodSourceCommentFor: aPMethod."
	params := aPMethod params asPObject.
	locals := aPMethod locals asPObject.
	annotations := (self prepareAnnotations: aPMethod annotations) asPObject.
	self visit: params.
	self visit: locals.
	self visit: annotations.
	self visitCollection: aPMethod.
	self
		createSized: aPMethod
		with:
			'new_AST_Method_with(' , '(Type_Array)' , params uid , ', ' , '(Type_Array)' , locals uid , ', ' , '(Type_Array)'
				, annotations uid.
	self installPInfoOn: aPMethod.
	methods add: aPMethod.	"reset the node cache"
	visitedNodes removeAll