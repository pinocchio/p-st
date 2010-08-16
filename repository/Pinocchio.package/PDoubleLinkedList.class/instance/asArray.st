converting
asArray
	| result |
	result := Array new: size.
	self copyTo: result.
	^ result