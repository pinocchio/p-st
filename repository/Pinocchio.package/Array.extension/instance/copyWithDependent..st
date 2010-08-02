*Pinocchio
copyWithDependent: newElement
	<preventExport>
	self size = 0 ifTrue:[^DependentsArray with: newElement].
	^self copyWith: newElement