private-socket
receiveData
	"Receive data with timeout if it has been set.
	If shouldSignal is false we use the Socket methods
	that swallow those Exceptions, if it is true the
	caller will have to handle those Exceptions.
	Return the position in the buffer where the
	new data starts, regardless if anything
	was read, see #adjustInBuffer."
	
	self warn: 'SocketStream>>receiveData'.
	
	recentlyRead := shouldSignal ifTrue: [
			self warn: 'SocketStream>>receiveData: should signal'.
		self shouldTimeout ifTrue: [
				self warn: 'SocketStream>>receiveData: should timeout'.
				socket receiveDataSignallingTimeout: timeout
					into: inBuffer startingAt: inNextToWrite]
			ifFalse: [
				self warn: 'SocketStream>>receiveData: should NOT timeout'.
				socket receiveDataSignallingClosedInto: inBuffer
					startingAt: inNextToWrite]]
				ifFalse: [
			self warn: 'SocketStream>>receiveData: should NOT signal'.
		self shouldTimeout ifTrue: [
			self warn: 'SocketStream>>receiveData: should timeout'.
			"This case is tricky, if it times out and is swallowed
			how does other methods calling this method repeatedly
			get to know that? And what should they do?"
				socket receiveDataTimeout: timeout
					into: inBuffer startingAt: inNextToWrite]
			ifFalse: [
			self warn: 'SocketStream>>receiveData: should NOT timeout'.
				socket receiveDataInto: inBuffer
					startingAt: inNextToWrite]].
	^self adjustInBuffer: recentlyRead