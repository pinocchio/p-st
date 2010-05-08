as yet unclassified
slotAt: name ifAbsent: block
	self do: [ :aSlot | aSlot name = name ifTrue: [ ^ aSlot ] ].
	^ block value.