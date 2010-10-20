running
runBaseBenchmark
	| results |
	(self class respondsTo: #baseBenchmark) ifFalse: [ ^ self ].
	(self class baseBenchmark = self class) ifTrue: [ ^ self ].
	self class baseBenchmark run runs keysAndValuesDo: [ :selector :run|
			(self runs at: selector) base: run.]