application
interpretBlock: aBlock
	| result |
	result := super interpretBlock: aBlock.
	^ (PReturnAlias alias: result)
		context: context