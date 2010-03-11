convenience
createMethod: aMethod with: body
	(aMethod annotations anySatisfy: [ :annotation|
		annotation selectorSymbol = #pinocchioPrimitive:module:
	])
		ifTrue: [ ^ PNativeMethod withAll: body. ]
		ifFalse: [ ^ PMethod withAll: body. ].