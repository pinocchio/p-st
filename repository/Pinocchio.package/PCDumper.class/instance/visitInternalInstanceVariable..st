visitor
visitInternalInstanceVariable: aPInternalInstanceVariable 
	globals add: aPInternalInstanceVariable.
	self putRaw: aPInternalInstanceVariable
		with: ('((Type_Array)((Type_Class)', self currentClass uid ,')->layout)->values[', 
				aPInternalInstanceVariable localId asString,']')