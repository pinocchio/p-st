as yet unclassified
initialize 
	internalConstantCode := PDictionary new.
	internalConstantCode at: false put: #pushFalse.
	internalConstantCode at: true put: #pushTrue.
	internalConstantCode at: nil put: #pushNil.
	internalConstantCode at: 0 put: #push0.
	internalConstantCode at: 1 put: #push1.
	internalConstantCode at: 2 put: #push2.