inspecting
inspectChildrenFrom: anObject
	^ (self select: #isInspectable) collect: [ :anInstVariable | anInstVariable readFrom: anObject ]