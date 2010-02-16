instance creation
with: anObject
	| result |
	result := (self new: 1).
	result at: 1 put: anObject.
	^ result.