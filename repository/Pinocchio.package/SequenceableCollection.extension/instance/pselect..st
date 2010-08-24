*Pinocchio
pselect: aBlock 
	<renameExport: #select: >
	"Refer to the comment in Collection|select:."
	| aStream |
	aStream := (self species new: self size) writeStream.
	1 to: self size do: [:index |
		(aBlock value: (self at: index))
			ifTrue: [aStream write: (self at: index)]].
	^ aStream contents