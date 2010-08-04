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
				#errorNotFound:.
				#reject:.
				#select:.
				#collect:.}].
	^ super pMethods