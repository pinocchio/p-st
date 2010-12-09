as yet unclassified
runSelector: selector dictSize: size benchmark: benchmark results: results
	| result |
	benchmark dictSize: size.
	benchmark probeCount: self probeCount.
	benchmark keyBlock: (self keyBlockGenerator value: size).
	result := benchmark run: selector.
	(results at: selector) at: size put: result.