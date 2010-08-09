accessing
assign: key to: value
	1 to: bucketSize by: 2 do: [ :index |
		(self at: index) = key
			ifTrue: [ self at: index + 1 put: value. ^ true ]].
	^ false