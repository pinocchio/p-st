visitor
visitInternalInstanceVariable: aPInternalInstanceVariable
	aPInternalInstanceVariable uid
		ifNil:
			[ aPInternalInstanceVariable uid: 'intinstvar_' , currentClass name asString , '_' , aPInternalInstanceVariable name.
			globals add: aPInternalInstanceVariable ].
	self putRaw: aPInternalInstanceVariable
		with: [ :s| s << '((Array)((Class)' << currentClass uid << ')->layout)->values['
				<< aPInternalInstanceVariable index asString << ']'].