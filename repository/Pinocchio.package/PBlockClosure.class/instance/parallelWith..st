debugging
parallelWith: aBlock
	^ PParallelDebugger interpret: (PArray with: self with: aBlock)