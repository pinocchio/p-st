as yet unclassified
export
	| result |
	result := self export: self locallyChangedClasses.
	self saveLocalChanges.
	^ result