initialization
initialize 
	internalConstantCode := PDictionary new.
	internalConstantCode at: false put: #'push_false'.
	internalConstantCode at: true put: #'push_true'.
	internalConstantCode at: nil put: #'push_nil'.
	internalConstantCode at: 0 put: #'push_0'.
	internalConstantCode at: 1 put: #'push_1'.
	internalConstantCode at: 2 put: #'push_2'.