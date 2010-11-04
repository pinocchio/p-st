as yet unclassified
benchMediumMethod
	| string |
	string := PEGStringScanner on: 'initialize 
	internalConstantCode := PDictionary new.
	internalConstantCode at: false put: #pushfalse.
	internalConstantCode at: true put: #pushtrue.
	internalConstantCode at: nil put: #pushnil.
	internalConstantCode at: 0 put: #push0.
	internalConstantCode at: 1 put: #push1.
	internalConstantCode at: 2 put: #push2.'.
	self repetitionCount timesRepeat: [ 
		methodParser match: string.
		string reset.].