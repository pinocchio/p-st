convenience
createMethod: aMethod with: body
	(aMethod annotatedWith: #pinocchioPrimitive:module:)
		ifTrue: [ ^ PNativeMethod withAll: body ].
	(aMethod annotatedWith: #pinocchioReflective:)
		ifTrue: [ ^ PReflectionMethod withAll: body ].
	^ PMethod withAll: body