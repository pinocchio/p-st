exporting
restrictExportOn: inputSet
	| aSet |
	aSet := inputSet.
	aSet isCollection ifFalse: [
		restrictionSet := PSet new.
		restrictionSet add: inputSet.
	] ifTrue: [
		restrictionSet := PSet newFrom: aSet
	].