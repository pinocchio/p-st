accessing
raiseDuplicateMethod: selector
	self warn: 'Duplicate method: ', selector.
	self halt.