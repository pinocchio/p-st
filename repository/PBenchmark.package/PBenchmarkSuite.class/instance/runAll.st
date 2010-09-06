running
runAll
	self class allSelectors do: [ :selector|
		(self shouldRunSelector: selector)
			ifTrue: [ self run: selector ]].
	