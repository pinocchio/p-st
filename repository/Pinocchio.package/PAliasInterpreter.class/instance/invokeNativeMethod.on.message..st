sending
invokeNativeMethod: aClosure on: receiver message: aMessage
	| unwrappedMessage |
	unwrappedMessage := PMessage new: aMessage size.
	unwrappedMessage selector: aMessage selector.
	aMessage withIndexDo: [ :arg :index | unwrappedMessage at: index put: arg value ]. " unwrap the aliases "
	^ super invokeNativeMethod: aClosure on: (receiver value) message: unwrappedMessage alternative: [
		self
			invokeMethod: aClosure
			on: receiver
			message: aMessage
	]