visitor
visitInternalInstanceVariable: aPInternalInstanceVariable
	self halt.
	id at: aPInternalInstanceVariable ifAbsent: [ 
			globals add: aPInternalInstanceVariable.
			id at: aPInternalInstanceVariable put: 'intinstvar_' , currentClass name asString , '_' , aPInternalInstanceVariable name. ].
	self putRaw: aPInternalInstanceVariable
		with: [ :s| 
			s << '((Array)((Class)' << (self idFor: currentClass) << ')->layout)->values['
				<< aPInternalInstanceVariable index asString << ']'].