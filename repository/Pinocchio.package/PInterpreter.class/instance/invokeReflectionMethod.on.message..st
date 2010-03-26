sending
invokeReflectionMethod: aClosure on: receiver message: aMessage
	| annotation message |
	annotation := aClosure annotationAt: #pinocchioReflective:.
	message := annotation at: 1.
	self halt.