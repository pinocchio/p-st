instance creation
newFrom: aCollection
	| result |
	result := self new: aCollection size.
	1 to: aCollection size do: [ :index|
		result at: index put: (aCollection  at: index).
	].
	^ result.