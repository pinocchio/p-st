navigating
right: distance
	distance < 0
		ifTrue: [ 0 - distance timesRepeat: [ output left ]]
		ifFalse: [ distance timesRepeat: [ output right ]].