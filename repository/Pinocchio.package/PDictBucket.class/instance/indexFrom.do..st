enumeration
indexFrom: from do: aBlock
	self elementIndexFrom: from do: [ :element :index | aBlock value: index ]