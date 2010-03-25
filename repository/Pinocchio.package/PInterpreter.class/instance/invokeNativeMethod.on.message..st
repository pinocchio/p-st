sending
invokeNativeMethod: aClosure on: receiver message: aMessage
	<pinocchioPrimitive: #invokeNativeMethod:on:message: module: #'Interpretation.Interpreter'>
	^ self
		invokeMethod: aClosure
		on: receiver
		class: aClosure host
		message: aMessage