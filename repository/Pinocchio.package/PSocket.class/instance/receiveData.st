primitives
receiveData
	| buffer |
	buffer := String new: 8000.
	^ self receiveAvailableDataInto: buffer startingAt: 1.