as yet unclassified
updateSamples
	samples := Array new: sampleCount.
	1 to: sampleCount do: [ :index| 
		samples at: index put: (self primeSampleAt: index)].