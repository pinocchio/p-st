exporting
export: classes
	| aCollection |
	aCollection := classes.
	(classes isKindOf: Behavior) ifTrue: [
		 aCollection := Array with: classes.
	].
	^ self new export: aCollection.