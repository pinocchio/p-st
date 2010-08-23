*Pinocchio
splitCategory
	<preventExport>
	| categories |
	categories := '-' split: self category.
	categories first = #Pinocchio 
		ifTrue: [ ^ categories copyFrom: 2 to: categories size ].
	^ categories.