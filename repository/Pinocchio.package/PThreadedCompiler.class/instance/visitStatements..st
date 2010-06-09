visiting
visitStatements: aCollection
	aCollection do: [ :each|
		each accept: self.
		self append: #pop.
	].