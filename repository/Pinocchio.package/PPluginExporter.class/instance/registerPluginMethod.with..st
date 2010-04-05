convenience
registerPluginMethod: aPMethod with: aPAnnotation 
	"Collect the given pragma at its module name."
	| key |
	key := aPAnnotation at: 2.
	plugins at: key ifPresent: [ :aCollection|
		^ aCollection add: aPMethod @ aPAnnotation.		
	].
	plugins at: key put: (OrderedCollection with: aPMethod @ aPAnnotation).