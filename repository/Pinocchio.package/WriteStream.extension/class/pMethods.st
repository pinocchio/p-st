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
				#position:.
				#contents.
				#growTo:.
				#pastEndPut:.}].
	^ super pMethods