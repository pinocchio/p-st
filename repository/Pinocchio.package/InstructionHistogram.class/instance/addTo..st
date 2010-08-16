as yet unclassified
addTo: aCollection
	aCollection add: self.
	self do: [ :histogram|
		histogram addTo: aCollection].
	^ aCollection.