inspecting
inspectNameOn: aStream
	aStream << self class name.
	runs size > 1 ifTrue: [
		aStream << ': '.
		super printOn: aStream ]