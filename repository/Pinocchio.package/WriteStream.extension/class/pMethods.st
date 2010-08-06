*Pinocchio
pMethods
	<preventExport>
	self == WriteStream
		ifTrue:
			[ ^{#<<.
				#nextPut:.
				#nextPutAll:.
				#on:.
				#reset.
				#with:.
				#lf.
				#space.
				#tab.
				#position:.
				#contents.
				#growTo:.
				#pastEndPut:.}].
	^ super pMethods