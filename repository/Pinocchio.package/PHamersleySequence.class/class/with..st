instance creation
with: sampleCount
	^ self new
		sampleCount: sampleCount;
		p: (self nextPrime: sampleCount)