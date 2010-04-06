interpreting
visitUnsintInstVariable: anUnsintInstVariable
	| result |
	result := super visitUnsintInstVariable: anUnsintInstVariable.
	^ PAllocationAlias new value: result