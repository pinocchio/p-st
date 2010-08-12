writing
nextPut: char
	" dont check for write mote."
	buffer1 at: 1 put: char.
	self primWrite: fileID from: buffer1 startingAt: 1 count: 1.
	^ char
