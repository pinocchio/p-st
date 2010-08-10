*Pinocchio
pMethods
	<preventExport>
	self == Collection
		ifTrue:
			[^{#inject:into:.
				#addAll:.
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