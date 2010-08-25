initialize
destroy
	"Destroys the receiver"

	self stopListener.
	self destroyConnections.
	listenerSocket ifNotNil:[listenerSocket destroy].
