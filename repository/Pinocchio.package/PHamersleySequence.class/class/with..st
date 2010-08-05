instance creation
with: sampleCount
	Smalltalk garbageCollect.
	^ self new
		sampleCount: sampleCount;
		p: (self nextPrime: sampleCount)