visitor
visitMethodClosure: aPMethodClosure 
	self visit: aPMethodClosure selector.
	self visit: aPMethodClosure code.
	
	self newline.
	self put: aPMethodClosure 
		with: ('new_Runtime_MethodClosure(', aPMethodClosure code uid, ')').
	self installPInfoOn: aPMethodClosure.
		
	stream nextPutAll: 'store_method((Type_Class)';
		nextPutAll: aPMethodClosure pclass uid; 
		nextPutAll: ', (Type_Symbol)';
		nextPutAll: aPMethodClosure selector uid;
		nextPutAll: ', (Runtime_MethodClosure)';
		nextPutAll: aPMethodClosure uid;
		nextPutAll: ');'; cr.