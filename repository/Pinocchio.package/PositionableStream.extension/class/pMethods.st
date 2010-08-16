*Pinocchio
pMethods
	<preventExport>
	self == PositionableStream ifTrue: [ 
		^ {#on:.
			#position:.
			#position.
			#positionError.
			#atEnd.
			#back.
			#peek.
			#contents.
			#reset}].
	^ super pMethods