convenience
createMethod: aMethod with: body
	(aMethod annotatedWith: #pPrimitive:plugin:)
		ifTrue: [ ^ PNativeMethod withAll: body ].
	(aMethod annotatedWith: #pPrimitive:plugin:code:)
		ifTrue: [ ^ PNativeMethod withAll: body ].

	(aMethod annotatedWith: #pinocchioReflective:)
		ifTrue: [ ^ PReflectionMethod withAll: body ].
		
	^ PMethod withAll: body