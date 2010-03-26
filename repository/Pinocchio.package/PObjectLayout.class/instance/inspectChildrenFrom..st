inspecting
inspectChildrenFrom: anObject
	^ (self select: #isInspectable) collect: [ :anInstVariable | anInstVariable @ (anInstVariable readFrom: anObject) ]