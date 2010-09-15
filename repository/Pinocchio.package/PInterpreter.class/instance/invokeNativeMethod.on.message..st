natives
invokeNativeMethod: aClosure on: receiver message: aMessage
	| old result |
	old := self swapInvokeNative.
	result := self invokeNativeMethod: aClosure on: receiver message: aMessage alternative: [
			self invokeMethod: aClosure
				on: receiver
				message: aMessage ].
	old swapInvokeNative.
	^ result