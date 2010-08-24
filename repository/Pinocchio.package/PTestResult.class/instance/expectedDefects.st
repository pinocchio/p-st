accessing
expectedDefects
	| defects |
	defects := (errors, OrderedCollection newFrom: failures).
	^  defects select: [:each | each shouldPass not] 