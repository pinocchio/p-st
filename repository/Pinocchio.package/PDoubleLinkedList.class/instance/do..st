iterating
do: block
	| link |
	link := start.
	size timesRepeat: [ block value: (link := link next) value ]