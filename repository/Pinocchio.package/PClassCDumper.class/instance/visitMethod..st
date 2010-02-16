visitor
visitMethod: aPMethod
	self newline.
	stream nextPutAll: 'void init_method_';
		nextPutAll: aPMethod uid;
		nextPutAll: '() {'; cr.
	
	self comment: (self currentClass name asString, '>>', aPMethod selector asString).
	self createMethodSourceCommentFor: aPMethod.
	self visit: aPMethod params.	
	self visit: aPMethod locals.
	self visitCollection: aPMethod.
	self createSized: aPMethod 
		with: ('new_AST_Method_with(',
						'(Type_Array)', aPMethod params uid, ', ',
						'(Type_Array)', aPMethod locals uid).
	self installPInfoOn: aPMethod.
	self installMethod: aPMethod.
	
	stream nextPutAll: '}'; cr; cr.
		
	methods add: aPMethod.
	"reset the node chache"
	visitedNodes removeAll.