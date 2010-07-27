visitor
visitMethod: aPMethod threaded: aBool
	| params locals annotations threaded|
	"self createMethodSourceCommentFor: aPMethod."
	params := aPMethod params asPObject.
	locals := aPMethod locals asPObject.
	aBool ifTrue: [
		threaded :=  aPMethod threaded asPObject.] 
	ifFalse: [
		threaded := PArray new: 0. ].
	
	annotations := (self prepareAnnotations: aPMethod annotations) asPObject.
	self visit: params.
	self visit: locals.
	self visit: annotations.
	self visit: (self preprocessThreadedArray: threaded).
	self visitCollection: aPMethod.
	
	self createSized: aPMethod with: [ :s|
			 s << 'new_' << aPMethod class pTypeName
				<< '_with(' << (self idFor: params) << ', '
					 	<< (self idFor: locals) << ', '
						<< (self idFor: annotations) << ', '
						<< (self idFor:  threaded)].
	self installPInfoOn: aPMethod.
	
	methods add: aPMethod.	"reset the node cache"
	visitedNodes removeAll