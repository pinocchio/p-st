accessing
sample
	| result |
	result := collection species new: 20.
	position to: (readLimit - 1 min: self position + 19) do:
			[ :i | result at: 1 + i - position put: (collection at: i + 1) ].
	^ result