running
benchmarkNameForSelector: selector
	(selector beginsWith: #bench) ifTrue: [ ^ selector copyFrom: 6 to: selector size].
	^ selector
	