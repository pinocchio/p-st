running
runAll
	self class methodDict keysDo: [ :key|
		(self shouldRunSelector: key) ifTrue: [ self run: key]].
	