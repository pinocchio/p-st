application
interpretMethod: aMethod
	| result |
	result := super interpretMethod: aMethod.
	^ (PReturnAlias alias: result)
		context: context