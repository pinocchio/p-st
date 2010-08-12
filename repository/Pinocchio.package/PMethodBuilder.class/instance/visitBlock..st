visiting
visitBlock: aBlock
	|result newlocal newparam |
	result := aBlock species new: aBlock size.
	
	result locals: (aBlock locals collect: [ :local |
		newlocal := local cloneAt: depth.
		locals at: local put: newlocal.
		newlocal ]).
	
	result params: (aBlock params collect: [ :param |
		newparam := param cloneAt: depth.
		locals at: param put: newparam.
		newparam  ]).
	
	depth := depth + 1.
	aBlock withIndexDo: [ :exp :index |
		result at: index put: (exp accept: self) ].
	depth := depth - 1.
	
	^ result