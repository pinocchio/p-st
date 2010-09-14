headers
addHeader: key value: value
	"Adds an ADDITIONAL header for the given key"

	headers add: (PAssociation basicNew key: key value: value)