initialization
initialize 
	super initialize.
	self dictSize: 10000.
	keyBlock := [ :key| key].
	valueBlock := [ :value| value].