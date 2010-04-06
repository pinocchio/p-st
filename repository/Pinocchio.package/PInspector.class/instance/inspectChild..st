private
inspectChild: child
	self addLine: child x inspectLabel, ': ', (self shallowInspect: child y)