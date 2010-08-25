*Pinocchio
pMethods
	<preventExport>
	self == Collection
		ifTrue:
			[^{#inject:into:.
				#addAll:.
				#detect:.
				#detect:ifNone:.
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