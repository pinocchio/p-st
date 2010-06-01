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
			'new_', aPMethod class pTypeName,'_with(' , '(Collection_Array)' , params uid , ', ' , '(Collection_Array)' , locals uid , ', ' , '(Collection_Array)'
				, annotations uid.
	self installPInfoOn: aPMethod.
	methods add: aPMethod.	"reset the node cache"
	visitedNodes removeAll