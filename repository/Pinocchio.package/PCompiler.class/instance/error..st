error handling
error: message
	^ PCompilationFailure new
		target: pinocchioClass;
		method: currentMethod;
		message: message;
		signal