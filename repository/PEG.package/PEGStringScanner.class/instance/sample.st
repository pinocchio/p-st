accessing
sample 
	| result |
	result := collection species new: 3.
	self position to: ((readLimit - 1) min: (self position + 2))
		do: [ :i | result at: 1 + i - (self position) put: (collection at: i + 1) ].
	^ result