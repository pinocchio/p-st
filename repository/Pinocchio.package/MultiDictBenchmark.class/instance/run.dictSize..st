as yet unclassified
run: selector dictSize: size
	| result |
	
	stBenchmark dictSize: size.
	result := stBenchmark run: selector.
	(stResults at: selector) at: size put: result.
	
	pBenchmark dictSize: size.
	result := pBenchmark run: selector.
	(pResults at: selector) at: size put: result.