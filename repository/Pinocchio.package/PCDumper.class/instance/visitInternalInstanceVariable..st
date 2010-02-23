visitor
visitInternalInstanceVariable: aPInternalInstanceVariable 
	aPInternalInstanceVariable uid ifNil: [
		aPInternalInstanceVariable uid: 'intinstvar_', currentClass name asString,'_', aPInternalInstanceVariable name.
		globals add: aPInternalInstanceVariable
	].
	
	self putRaw: aPInternalInstanceVariable
		with: ('((Type_Array)((Type_Class)', self currentClass uid ,')->layout)->values[', 
				aPInternalInstanceVariable index asString,']')