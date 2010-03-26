sending
invokeReflectionMethod: aClosure on: receiver message: aMessage
	| annotation selector metamessage |
	annotation := aClosure annotationAt: #pinocchioReflective:.
	selector := annotation at: 1.
	(self respondsTo: selector) ifTrue: [
		^ self perform: selector withArguments: (Array with: receiver with: aMessage)
	].
	^ self invokeMethod: aClosure on: receiver message: aMessage