accessing
size
	^ lines inject: 0 into: [:sum :line| sum + line size]. 