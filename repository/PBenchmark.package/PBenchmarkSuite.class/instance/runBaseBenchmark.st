running
runBaseBenchmark
	| results base |
	(self respondsTo: #baseBenchmark) ifFalse: [ ^ self ].
	base := self baseBenchmark.
	base ifNil: [ ^ self].
	base runAll runs keysAndValuesDo: [ :selector :run|
			(self runs at: selector) base: run.]