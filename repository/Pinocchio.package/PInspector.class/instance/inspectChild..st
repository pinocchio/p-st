private
inspectChild: child
	self addLine: child x name, ': ', (self shallowInspect: child y)