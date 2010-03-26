visiting
accept: visitor on: receiver message: message boundBy: closure
	^ visitor
		invokeReflectionMethod: closure
		on: receiver
		message: message