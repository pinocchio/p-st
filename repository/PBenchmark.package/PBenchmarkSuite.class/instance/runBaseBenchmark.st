running
runBaseBenchmark
	| results base |
	(self respondsTo: #baseBenchmark) ifFalse: [ ^ self ].
	base := self baseBenchmark.
	base ifNil: [ ^ self].
	base == self ifTrue: [ Error signal: 'baseBenchmark cannot be self'].
	base runAll runs keysAndValuesDo: [ :selector :aRun|
			(self runs at: selector) base: aRun.]