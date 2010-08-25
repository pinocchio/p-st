running
run: selector
	|run|
	run := PBenchmarkRun new.
	run target: self; 
		probeCount: self probeCount;
		selector: selector;
		name: (self benchmarkNameForSelector: selector).
	run run.
	runs at: selector put: run.
	