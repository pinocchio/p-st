stream in
upToAll: aStringOrByteArray
	"Answer a subcollection from the current access position to the occurrence (if any, but not
	inclusive) of aStringOrByteArray. If aCollection is not in the stream, answer the entire rest of
	the stream.
	
	NOTE: Does not honour timeouts if shouldSignal is false!
	
	This method looks a bit complicated, and this is mainly because there is no fast search method
	in String that takes a stoppingAt: argument. This means we need to ignore getting hits in the
	dead buffer area above inNextToWrite.
	Another measure is that this implementation is greedy and will load data into the buffer
	until there is nothing more available, or it has loaded 100kb - and not until then we search the buffer.

	A totally non greedy variant would search on every loop."

	| index sz result lastRecentlyRead searchedSoFar |
	sz := aStringOrByteArray size.
	searchedSoFar := 0.
	lastRecentlyRead := 0.
	index := 0.
	[self atEnd not and: [
		((lastRecentlyRead = 0 and: [self isInBufferEmpty not]) or: [self inBufferSize > 100000]) ifTrue: [
			"Data begins at lastRead + 1, we add searchedSoFar as offset and backs up sz - 1
			so that we can catch any borderline hits."
			index := inBuffer indexOfSubCollection: aStringOrByteArray
						startingAt: lastRead + searchedSoFar - sz + 2.
			searchedSoFar := self inBufferSize.
			(index > 0 and: [(index + sz) > inNextToWrite]) ifTrue: [
				"Oops, hit partially or completely in dead buffer area.
				This is probably due to old data, so we ignore it.
				No point in cleaning the dead area to avoid hits - it will still search it."
				index := 0]].
		index = 0]]
				whileTrue: [
					recentlyRead = 0
						ifTrue: ["blocking call for now, we don't want to poll"
							self receiveData]
						ifFalse: [
							self receiveAvailableData].
					lastRecentlyRead := recentlyRead].
	index > 0
		ifTrue: ["found it"
			result := self nextInBuffer: index - lastRead - 1.
			self skip: sz.
			^ result]
		ifFalse: ["atEnd"
			^ self nextAllInBuffer]