interpreting
recursiveDoesNotUnderstand: aMessage on: receiver
	self error: 'Recursive doesNotUnderstand: #''', aMessage selector, ''''.