printing
printOn: aStream 

	self print24: false
		showSeconds: (self second ~= 0)
		on: aStream