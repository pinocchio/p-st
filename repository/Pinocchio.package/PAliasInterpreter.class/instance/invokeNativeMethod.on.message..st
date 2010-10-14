sending
invokeNativeMethod: aClosure on: receiver message: aMessage
	| unwrappedMessage result |
	unwrappedMessage := PMessage new: aMessage size.
	unwrappedMessage selector: aMessage selector.
	aMessage withIndexDo: [ :arg :index | unwrappedMessage at: index put: arg value ]. " unwrap the aliases "
	context := PNativeMethodContext new
					receiver: receiver;
					message: aMessage;
					closure: aClosure;
					returnContext: context.
	result := super invokeNativeMethod: aClosure on: (receiver value) message: unwrappedMessage alternative: [
		context := context returnContext.
		^ self
			invokeMethod: aClosure
			on: receiver
			message: aMessage
	].
	result := result asAllocationAlias: context.
	context := context returnContext.
	^ result