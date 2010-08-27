visiting
visitSTFloat: aFloat 
	^ (aFloat < 0 
			ifTrue: [ 'float_n', aFloat negated asString]
			ifFalse: [ 'float_', aFloat asString]) 
		copyReplaceAll: #. with: #_ .