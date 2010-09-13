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
				#ifNotEmpty:.
				#hasReturnExpression.
				#asOrderedCollection.
				#anySatisfy:.
				#allSatisfy:.
				#includes:.
				#emptyCheck.
				#errorNotFound:.
				#reject:.
				#select:.
				#collect:.
				#stdev.
				#anyOne.
				#average.
				#emptyCheck.
				#notEmpty.
				#sum}].
	^ super pMethods