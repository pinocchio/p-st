visitor
visitNativeMethod: aPMethod
	| params locals |
		
	"self createMethodSourceCommentFor: aPMethod."
	params := aPMethod params asPObject.
	locals := aPMethod locals asPObject.
	self visit: params.	
	self visit: locals.
	self visitCollection: aPMethod.
	self createSized: aPMethod 
		with: ('new_AST_NativeMethod_with(',
						'(Type_Array)', params uid, ', ',
						'(Type_Array)', locals uid).
	self installPInfoOn: aPMethod.
		
	methods add: aPMethod.
	"reset the node cache"
	visitedNodes removeAll.