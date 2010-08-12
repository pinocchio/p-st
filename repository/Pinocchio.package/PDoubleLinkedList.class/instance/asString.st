converting
asString
	| result |
	result := String new: size.
	self copyTo: result.
	^ result