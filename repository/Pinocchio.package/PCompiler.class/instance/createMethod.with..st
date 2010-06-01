convenience
createMethod: aMethod with: body
	(aMethod annotatedWith: #pinocchioPrimitive:module:)
		ifTrue: [ ^ self halt. ].
	(aMethod annotatedWith: #pPrimitive:plugin:)
		ifTrue: [ ^ PNativeMethod withAll: body ].
	(aMethod annotatedWith: #pPrimitive:plugin:code:)
		ifTrue: [ ^ PNativeMethod withAll: body ].
		
	(aMethod annotatedWith: #pinocchioReflective:)
		ifTrue: [ ^ PReflectionMethod withAll: body ].
	(aMethod annotatedWith: #pThreaded)
		ifTrue: [ ^ PThreadedMethod withAll: body ].
		
	^ PMethod withAll: body