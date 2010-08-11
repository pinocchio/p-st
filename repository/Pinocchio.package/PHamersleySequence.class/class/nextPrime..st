instance creation
nextPrime: value
	|p|
	p := value.
	[ p isPrime ] whileFalse: [ p := p + 1 ].
	^ p