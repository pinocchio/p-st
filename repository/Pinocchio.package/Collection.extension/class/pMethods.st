*Pinocchio
pMethods
	<preventExport>
	self == Collection
		ifTrue:
			[^{#inject:into:.
				#addAll:.
				#isEmpty.
				#hasReturnExpression.
				#asOrderedCollection.
				#anySatisfy:.
				#allSatisfy:.
				#includes:.
				#emptyCheck.
				#errorNotFound:.
				#reject:.
				#select:.
				#collect:.}].
	^ super pMethods