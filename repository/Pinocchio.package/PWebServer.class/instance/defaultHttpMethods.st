initialize
defaultHttpMethods
	"Answer the list of HTTP methods that should be be supported by default.
	The methods must be implemented by the request handler."

	^Array with: 'GET' with: 'POST'