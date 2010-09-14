initialize
newResponse
	"Create a new response entitiy.
	Subclasses can override this method to provide a different response class"

	^(PWebResponse new)
		request: self;
		yourself