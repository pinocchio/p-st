*Pinocchio
newFromAll: strings
	| size result position |
	size := 0.
	strings do: [ :s | size := size + s size ].
	result := self new: size.
	position := 1.
	strings do: [ :s | s do: [ :c | result at: position put: c. position := position + 1 ]].
	^ result