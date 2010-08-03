visiting
visitSuper: aSuper
	|result|
	result := aSuper species new: aSuper size.
	result message: aSuper message.
	aSuper withIndexDo: [ :exp :idx | result at: idx put: (exp accept: self) ].
	^ result