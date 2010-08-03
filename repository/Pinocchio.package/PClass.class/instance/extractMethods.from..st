pharo-exporter
extractMethods: descriptor from: host
	<preventExport>
	| methodDict methodsDescriptor |
	methodsDescriptor := descriptor.
	descriptor ifNil: [ ^ OrderedCollection new].
	descriptor = #all ifTrue: [ ^ host methodDict copy].
	descriptor isSymbol 
		ifTrue: [ methodsDescriptor := host organization listAtCategoryNamed: methodsDescriptor ].
	methodDict := PDictionary new.
	methodsDescriptor collect: [:selector| 
			methodDict at: selector put: (host methodDict at: selector) ].
	^ methodDict.