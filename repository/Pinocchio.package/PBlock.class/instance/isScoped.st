accessing
isScoped
	^ (self params size ~= 0) or: [ self locals size ~= 0 ].