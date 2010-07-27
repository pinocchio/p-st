visiting
visitArrayLayout: aPArrayLayout
	aPArrayLayout size = 0 ifTrue: [ ^ #'empty_array_layout' ].
	^ self rawDefaultIdFor: aPArrayLayout.