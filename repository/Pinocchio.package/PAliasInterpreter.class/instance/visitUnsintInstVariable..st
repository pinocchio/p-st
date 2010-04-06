interpreting
visitUnsintInstVariable: anUnsintInstVariable
	| result |
	result := anUnsintInstVariable readFrom: self currentUnwrappedSelf.
	^ result asAllocationAlias: context