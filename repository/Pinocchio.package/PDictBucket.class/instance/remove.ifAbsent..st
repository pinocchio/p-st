removing
remove: aKey ifAbsent: aBlock
	| value |
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = aKey
			ifTrue: [
				value := self at: index + 1.
				self removeAt: index.
				^ value ]].
	^ aBlock value