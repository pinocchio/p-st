sending
invokeNativeMethod: aClosure on: receiver message: aMessage
	<pPrimitive: #invokeNativeMethod:on:message: plugin: #'Interpretation.Interpreter'>
	^ self
		invokeMethod: aClosure
		on: receiver
		class: aClosure host
		message: aMessage