enumeration
do: aBlock
	^ 1 to: bucketSize do: [ :index | aBlock value: (self at: index) ]