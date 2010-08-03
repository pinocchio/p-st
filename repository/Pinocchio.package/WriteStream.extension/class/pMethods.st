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
				#position:.
				#contents.
				#growTo:.
				#pastEndPut:.}].
	^ super pMethods