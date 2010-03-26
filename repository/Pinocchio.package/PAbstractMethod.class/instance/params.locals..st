accessing
params: newParams locals: newLocals
	| start |
	newParams withIndexDo: [ :each :index | each localId: index - 1 ].
	params := newParams.
	start := newParams size.
	newLocals withIndexDo: [ :each :index | each localId: start + index - 1 ].
	locals := newLocals