visiting
assign: value on: anObject
	^ anObject
		assignAt: localId
		in: scopeId
		to: value