accessing
at: key
	"<pPrimitive: #at: plugin: #'Collection.Dictionary'>"
	^ self at: key ifAbsent: [ self errorKeyNotFound: key ]