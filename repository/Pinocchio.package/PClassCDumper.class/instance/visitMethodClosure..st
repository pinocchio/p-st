visitor
visitMethodClosure: aPMethodClosure
	| selector |
	stream lf.
	self comment: aPMethodClosure selector.
	stream << 'void init_method_' << aPMethodClosure code uid << '() {'; lf.
	self createMethodSourceStringFor: aPMethodClosure.
	selector := aPMethodClosure selector asPObject.
	self visit: selector.
	self visit: aPMethodClosure code.
	stream lf.
	self put: aPMethodClosure 
		with: 'new_Runtime_MethodClosure((Method)',aPMethodClosure code uid,', ',aPMethodClosure host uid,')'.
	self installPInfoOn: aPMethodClosure.
	stream << 'store_method(' << currentClass uid << ', (Symbol)' << selector uid
		<< ', (Runtime_MethodClosure)' << aPMethodClosure uid << ');'; lf.
	stream << '}'; lf; lf