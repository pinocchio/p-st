visitor
visitMethodClosure: aPMethodClosure
	| selector |
	methodScope := IdentitySet  new.
	stream lf.
	selector := aPMethodClosure selector.
	stream << 'static void init_'.
	(aPMethodClosure host isKindOf: PMetaclass) ifTrue: [ stream << 'class_' ].
	stream << (self idFor: selector) << '() {'; indent; lf. 
	self createMethodSourceStringFor: aPMethodClosure.
	
	selector := selector asPObject.
	self visit: selector .
	self visit: aPMethodClosure code.
	stream lf.
	
	self put: aPMethodClosure with: [ :s| 
			s << 'new_MethodClosure((Method)' <<  (self idFor: aPMethodClosure code) << ', ' 
				<< (self idFor: aPMethodClosure host) << $)].
	self installPInfoOn: aPMethodClosure.
	stream << 'store_method(' << (self idFor: currentClass) << ', ' 
								<< (self idFor: selector) << ', ' 
								<< (self idFor: aPMethodClosure) << ');'; outdent; lf.
	stream << $}; lf; lf.
	methodScope := nil.