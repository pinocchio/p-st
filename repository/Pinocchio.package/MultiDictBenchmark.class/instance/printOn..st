as yet unclassified
printOn: aStream
	| pRun sRun |
	self selectors do: [ :selector|
		self printSelector: selector on: aStream].