visiting
visitBlockClosure: closure
	^ PMethodClosure new
		host: host;
		selector: selector;
		code: (closure code accept: self) asMethod.