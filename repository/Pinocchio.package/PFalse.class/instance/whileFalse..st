logical-operations
whileFalse: aBlock
	"<pPrimitive: #'whileFalse:' plugin: #'Type.False'>"
	aBlock value.
	^ self whileFalse: aBlock