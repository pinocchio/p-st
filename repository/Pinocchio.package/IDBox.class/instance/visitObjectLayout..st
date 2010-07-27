visiting
visitObjectLayout: aPObjectLayout
	| element |
	aPObjectLayout size = 0 ifTrue: [ ^ #'empty_object_layout' ].
	^ self rawDefaultIdFor: aPObjectLayout.