copying
copyTo: arrayed
	| position |
	position := start next.
	1 to: size do: [ :i |
		arrayed at: i put: position value.
		position := position next ].