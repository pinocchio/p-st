benchmark
benchAddExisting
	2 timesRepeat: [
		1 to: set size do: [ :i| 
			set add: (self value: i) ]].