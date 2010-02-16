matching
memoizeMatch: parser 
	| result |
	result := self bucket at: parser ifAbsentPut: [
		result := parser performMatch: self.
		position @ result
	].
	position := result x.
	^ result y