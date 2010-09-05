statistics
confidenceVariance
	(self probeCount >= 30) ifTrue: [
			^ (self gaussianConfidenceFactor) * (self stdev) / (self probeCount sqrt)].
	"use the students T distribution for small probe counts"
	^ (self studentsTConfidenceFactor) * (self stdev) / (self probeCount sqrt)