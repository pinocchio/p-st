*Pinocchio
coverageAsString
	<preventExport>
	| cov className |
	cov := self coverage first asInteger. 
	"coverage already checks that the name is ends with 'Test' and if the class tested exists"
	
	className := self name copyFrom: 1 to: (self name size - 'Test' size).
	^ self name asString, ' covers ', cov asString, '% of ', className.