as yet unclassified
createFunctionPointers: size
	| array |
	array := Array new: size.
	1 to: size do: [ :index|
		array at: index put: (PFunctionPointer named: index)].
	^ array