visiting
visitCollection: aCollection
	aCollection keysAndValuesDo: [ :name :each | each accept: self ]