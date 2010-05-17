converting
asMethod
	| result |
	result := PMethod new: self size.
	result locals: locals.
	result params: params.
	self withIndexDo: [:exp :index | result at: index put: exp ].
	^ result