sending
invokeNativeMethod: aClosure on: receiver message: aMessage
	^ self invokeNativeMethod: aClosure on: receiver message: aMessage alternative: [
			self invokeMethod: aClosure
				on: receiver
				message: aMessage
		]