exporting
collectPluginFromMethod: aPMethod
	| annotations |
	annotations := aPMethod code annotations.
	annotations do: [ :annotation|
		annotation selector = #pPrimitive:plugin:code: ifTrue: [
			self registerPluginMethod: aPMethod with: annotation.
		].
	].