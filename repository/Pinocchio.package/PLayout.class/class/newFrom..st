instance creation
newFrom: aCollection
	| instance index |
	instance := self new: aCollection size.
	index := 1.
	aCollection do: [ :each|
		instance at: index put: each.
		index := index+1.
	].
	^ instance.