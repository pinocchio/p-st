adding
atKey: aKey put: aValue ifAbsent: aBlock
	1 to: bucketSize by: 2 do:
			[ :index | 
			"value: key v value: value value: index"
			(self at: index) = aKey
				ifTrue:
					[ self at: index + 1 put: aValue.
					^ 0 ] ].
	^ aBlock value