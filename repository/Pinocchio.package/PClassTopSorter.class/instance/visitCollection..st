visiting
visitCollection: aCollection
	aCollection do: [ :each|
		each accept: self.
	].