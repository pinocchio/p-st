navigating
up: distance
	distance < 0
		ifTrue: [ 0 - distance timesRepeat: [ output down ]]
		ifFalse: [ distance timesRepeat: [ output up ]].