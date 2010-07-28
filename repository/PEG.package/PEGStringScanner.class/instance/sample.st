accessing
sample
	| result |
	result := collection species new: 3.
	position to: (readLimit - 1 min: self position + 2) do:
			[ :i | result at: 1 + i - position put: (collection at: i + 1) ].
	^ result