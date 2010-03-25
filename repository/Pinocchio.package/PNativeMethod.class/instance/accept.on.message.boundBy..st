visiting
accept: visitor on: receiver message: message boundBy: closure
	^ visitor
		invokeNativeMethod: closure
		on: receiver
		message: message