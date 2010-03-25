sending
recursiveDoesNotUnderstand: aMessage on: receiver
	self
		error:
			'Recursive doesNotUnderstand: ' , self currentSelf class name , '>>' , (aMessage at: 1) selector , ' ('
				, aMessage size asString , ') '