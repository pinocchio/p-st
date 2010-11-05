running
run
	self reset.
	self runAll.
	self runBaseBenchmark.
	self warn: 'ended run'
	