convenience
createMethod: aMethod with: body
	(aMethod annotations anySatisfy: [ :annotation|
		annotation selectorSymbol = #pinocchioprimitive:module:
	])
		ifTrue: [ ^ PNativeMethod withAll: body. ]
		ifFalse: [ ^ PMethod withAll: body. ].