inspecting
inspectChildrenFrom: anObject
	^ (self select: #isInspectable) collect: [ :anSlot | anSlot @ (anSlot readFrom: anObject) ]