*Pinocchio
pMethods
	<preventExport>
	self == Point
		ifTrue:
			[^{#x.
				#y.
				#=.
				#printString.
				#setX:setY:.}].
	^ super pMethods