comparing
= other
	self species = other species ifFalse: [ ^ false ].
	self size = other size ifFalse: [ ^ false ].
	self selector = other selector ifFalse: [ ^ false ].
	self withIndexDo: [ :arg :index |
		arg = (other at: index) ifFalse: [ ^ false ]
	].
	^ true