accessing
scanFor: aKey
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = aKey ifTrue: [ ^ index ]].
	^ 0