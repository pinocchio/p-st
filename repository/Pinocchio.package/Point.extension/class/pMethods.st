*Pinocchio
pMethods
	<preventExport>
	self == Point
		ifTrue:
			[^{#x.
				#y.
				#=.
				#printOn:.
				#setX:setY:.}].
	^ super pMethods