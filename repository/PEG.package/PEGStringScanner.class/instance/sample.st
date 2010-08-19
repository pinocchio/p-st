accessing
sample
	| result sampleSize |
	sampleSize := readLimit - position min: 20.
	result := collection species new: sampleSize.
	position to: position + sampleSize - 1 do:
			[ :i | result at: 1 + i - position put: (collection at: i + 1) ].
	^ result