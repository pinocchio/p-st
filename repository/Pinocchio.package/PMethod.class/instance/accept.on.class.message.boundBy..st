visiting
accept: visitor on: receiver class: class message: message boundBy: closure
	^ visitor
		invokeMethod: closure
		on: receiver
		class: class
		message: message