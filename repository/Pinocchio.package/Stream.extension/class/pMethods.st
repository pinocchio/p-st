*Pinocchio
pMethods
	<preventExport>
	self == Stream ifTrue: [
		^ {#<<.
			#atEnd.
			#contents.
			#flush.
			#next.
			} ].
	^ super pMethods