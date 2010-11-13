as yet unclassified
printSelector: selector on: aStream
	aStream << (selector copyFrom: 6 to: selector size); tab.
	self sizes do: [ :size| aStream << size asString; tab; tab].
	aStream lf.
	self printResults: pResults selector: selector named: #Pinocchio on: aStream.
	self printResults: stResults selector: selector named: #Smalltalk on: aStream.