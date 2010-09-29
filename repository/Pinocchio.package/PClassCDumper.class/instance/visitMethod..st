visitor
visitMethod: aPMethod
	| params locals annotations threaded|
	"self createMethodSourceCommentFor: aPMethod."
	params := aPMethod params asPObject.
	locals := aPMethod locals asPObject.
	threaded := aPMethod threaded asPObject.
	
	annotations := (self prepareAnnotations: aPMethod annotations) asPObject.
	self visit: params.
	self visit: locals.
	self visit: annotations.
	self visit: threaded.
	self visitCollection: aPMethod.
	
	self createSized: aPMethod with: [ :s|
			 s << 'new_' << aPMethod ctype
				<< '_with(' << (self idFor: params) << ', '
					 	<< (self idFor: locals) << ', '
						<< (self idFor: annotations) << ', '
						<< (self idFor:  threaded)].
	self installPInfoOn: aPMethod.
	
	methods add: aPMethod.	"reset the node cache"
	visitedNodes removeAll