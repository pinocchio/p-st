as yet unclassified
run: selector dictSize: size
	| result |
	useStDict ifTrue: [
		self runSelector: selector dictSize: size benchmark: stBenchmark results: stResults.].
	result := stBenchmark run: selector.
	(stResults at: selector) at: size put: result.
	
	pBenchmark dictSize: size.
	result := pBenchmark run: selector.
	(pResults at: selector) at: size put: result.
