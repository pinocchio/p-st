application
blockclosureValueWithArguments: aBlockClosure message: aMessage
	^ self blockclosureValue: aBlockClosure message: (aMessage at: 1)