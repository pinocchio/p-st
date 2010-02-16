accessing
add: anElement
	| result |
	result := self class new: self size +1.
	self doWithIndex: [:el :i | result at: i put: el ].
	result last: anElement.
	^ result.