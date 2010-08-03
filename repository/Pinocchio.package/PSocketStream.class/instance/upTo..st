stream in
upTo: aCharacterOrByte
	"Return data up to, but not including given character or byte.
	
	NOTE: Does not honour timeouts if shouldSignal is false!
	
	This method looks a bit complicated, and this is mainly because there is no fast search method
	in String that takes a stoppingAt: argument. This means we need to ignore getting hits in the
	dead buffer area above inNextToWrite.
	Another measure is that this implementation is greedy and will load data into the buffer
	until there is nothing more available, or it has loaded 100kb - and not until then we search the buffer.

	A totally non greedy variant would search on every loop."

	| index result lastRecentlyRead searchedSoFar |
	searchedSoFar := 0.
	lastRecentlyRead := 0.
	index := 0.
	[self atEnd not and: [
		((lastRecentlyRead = 0 and: [self isInBufferEmpty not]) or: [self inBufferSize > 100000]) ifTrue: [
			"Data begins at lastRead + 1, we add searchedSoFar as offset."
			index := inBuffer indexOf: aCharacterOrByte startingAt: lastRead + searchedSoFar + 1.
			searchedSoFar := self inBufferSize.
			(index > 0 and: [(index + 1) > inNextToWrite]) ifTrue: [
				"Oops, hit in dead buffer area.
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
			self skip: 1.
			^ result]
		ifFalse: ["atEnd"
			^ self nextAllInBuffer]