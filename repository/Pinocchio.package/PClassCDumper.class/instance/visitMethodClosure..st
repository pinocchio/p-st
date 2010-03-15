visitor
visitMethodClosure: aPMethodClosure 
	| selector |
	self newline.
	
	self comment: aPMethodClosure selector.
	stream nextPutAll: 'void init_method_';
		nextPutAll: aPMethodClosure code uid;
		nextPutAll: '() {'; lf.
	self createMethodSourceStringFor: aPMethodClosure.
		
	selector := aPMethodClosure selector asPObject.
	self visit: selector.
	self visit: aPMethodClosure code.
	
	self newline.
	self put: aPMethodClosure 
		with: ('new_Runtime_MethodClosure((AST_Method)', aPMethodClosure code uid, ')').
	self installPInfoOn: aPMethodClosure.
		
	stream << 'store_method((Type_Class)' << currentClass uid 
		<< ', (Type_Symbol)' << selector uid 
		<< ', (Runtime_MethodClosure)' << aPMethodClosure uid << ');'; lf.
	
	stream << '}'; lf; lf.