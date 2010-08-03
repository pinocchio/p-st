*Pinocchio
pMethods
	<preventExport>
	self == Collection
		ifTrue:
			[^{#inject:into:.
				#isEmpty.
				#hasReturnExpression.
				#anySatisfy:.
				#allSatisfy:.
				#includes:.
				#emptyCheck.
				#reject:.
				#select:.
				#collect:.}].
	^ super pMethods