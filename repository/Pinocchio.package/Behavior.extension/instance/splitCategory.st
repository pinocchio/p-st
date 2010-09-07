*Pinocchio
splitCategory
	<preventExport>
	| categories |
	categories := '-' split: self category.
	categories first = #Pinocchio ifTrue: [ categories removeFirst ].
	^ categories.