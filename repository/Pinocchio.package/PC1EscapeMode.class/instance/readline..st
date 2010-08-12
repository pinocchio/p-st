handling
readline: r
	super readline: r.
	modes valuesDo: [ :m | m readline: r ]