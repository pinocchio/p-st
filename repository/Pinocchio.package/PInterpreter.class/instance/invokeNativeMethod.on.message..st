natives
invokeNativeMethod: aClosure on: receiver message: aMessage
	| result |
	self swapInvokeNative.
	result := self invokeNativeMethod: aClosure on: receiver message: aMessage alternative: [
			self invokeMethod: aClosure
				on: receiver
				message: aMessage ].
	nil swapInvokeNative.
	^ result