accessing
position: value
	position := size min: value.
	current := start.
	position timesRepeat: [ current := current next ].