visitor
visitMethodClosure: aPMethodClosure 
	| selector |
	self newline.
	
	stream nextPutAll: 'void init_method_';
		nextPutAll: aPMethodClosure code uid;
		nextPutAll: '() {'; lf.
		
	selector := aPMethodClosure selector asPObject.
	self visit: selector.
	self visit: aPMethodClosure code.
	
	self newline.
	self put: aPMethodClosure 
		with: ('new_Runtime_MethodClosure((AST_Method)', aPMethodClosure code uid, ')').
	self installPInfoOn: aPMethodClosure.
		
	stream nextPutAll: 'store_method((Type_Class)';
		nextPutAll: currentClass uid; 
		nextPutAll: ', (Type_Symbol)';
		nextPutAll: selector uid;
		nextPutAll: ', (Runtime_MethodClosure)';
		nextPutAll: aPMethodClosure uid;
		nextPutAll: ');'; lf.
	
	stream nextPutAll: '}'; lf; lf.