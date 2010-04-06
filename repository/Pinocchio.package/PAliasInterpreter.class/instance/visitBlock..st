interpreting
visitBlock: aBlock
	| closure |
	closure := super visitBlock: aBlock.
	^ PAllocationAlias new
		value: closure;
		context: context