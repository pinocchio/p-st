convenience
argumentsFromAnnotation: aPAnnotation
	| args |
	args := SortedCollection new.
	aPAnnotation x code params keysAndValuesDo: [ :index :value |
		args add: index@(value name).
	].
	args sortBlock: [ :a :b|
		a y size > b y size
	].
	^ args