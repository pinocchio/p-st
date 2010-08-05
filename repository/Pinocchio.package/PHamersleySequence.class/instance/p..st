as yet unclassified
p: value
	"the prime basis"
	value isPrime ifFalse: [ self error: 'p must be a prime']. 
	p := value.
	self updateSamples.