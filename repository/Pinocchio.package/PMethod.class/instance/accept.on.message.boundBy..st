visiting
accept: visitor on: receiver message: message boundBy: closure
	^ visitor
		invokeMethod: closure
		on: receiver
		message: message