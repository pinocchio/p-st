stream in
peek
	"Return next byte, if inBuffer is empty
	we recieve some more data and try again.
	Do not consume the byte."

	self warn: 'SocketStream>>peek'.
	self atEnd ifTrue: [^nil].
	self warn: 'SocketStream>>peek: not at end'.
	self isInBufferEmpty ifTrue: [
		self warn: 'SocketStream>>peek: in buffer is empty'.
		self receiveData.
		self warn: 'SocketStream>>peek: recevied data'.
		self atEnd ifTrue: [
		self warn: 'SocketStream>>peek: at end'.
			^nil]].
	self warn: 'SocketStream>>peek: return...'.
	self warn: 'SocketStream>>peek: in buffer is'.
	self warn: inBuffer.
	self warn: 'SocketStream>>peek: last read is'.
	self warn: lastRead.
	^inBuffer at: lastRead + 1