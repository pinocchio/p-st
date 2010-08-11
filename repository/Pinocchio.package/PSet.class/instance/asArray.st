converting
asArray 
	| array index |
	array := Array new: self size.
	index := 1.
	self do: [ :each|
		array at: index  put: each.
		index := index + 1.
	].
	^ array.