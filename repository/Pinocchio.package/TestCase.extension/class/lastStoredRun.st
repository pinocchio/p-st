*Pinocchio
lastStoredRun
	|results|
	results := Dictionary new.
	results at: #failures put: Array new.
	results at: #passed put: Array new.
	results at: #errors put: Array new.
	^ results 