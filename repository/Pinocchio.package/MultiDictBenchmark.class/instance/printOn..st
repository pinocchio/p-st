printing
printOn: aStream
	| pRun sRun |
	aStream tab.
	self sizes do: [ :size| aStream << size asString; tab; tab].
	aStream lf.
	self selectors do: [ :selector|
		self printSelector: selector on: aStream].
