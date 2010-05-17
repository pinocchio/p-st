cloning
cloneAt: index for: class
	|result|
	result := super cloneAt: index for: class.
	result receiver: (receiver cloneAt: index for: class).
	^ result