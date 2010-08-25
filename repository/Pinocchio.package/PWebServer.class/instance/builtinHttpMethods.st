initialize
builtinHttpMethods
	"Returns the list of HTTP methods that the server handles built-in,
	i.e., without passing them to the registered service."

	^ Array new with: 'HEAD' with: 'TRACE' with: 'OPTIONS'