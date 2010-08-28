exporting
export: aRestrictingSet
	self reset.
	^ PharoExporter export: (aRestrictingSet isCollection 
			ifTrue: [aRestrictingSet]
			ifFalse: [ OrderedCollection with: aRestrictingSet])