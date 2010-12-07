as yet unclassified
sampleAt: index
	| output fraction copyOfIndex remainder |
	output := 0.0.
	fraction := 1.0 / prime.
	copyOfIndex := index asFloat.
	[copyOfIndex > 0] whileTrue: [
		remainder := copyOfIndex \\ prime.
		output := output + (fraction * remainder).
		copyOfIndex := (copyOfIndex - remainder) / prime.
		fraction := fraction / prime.].
	^ output.