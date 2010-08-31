inspecting
inspectChildrenFrom: anObject on: inspector
	self do: [ :slot |
		slot isInspectable ifTrue: [
			inspector child: slot value: [ slot readFrom: anObject ]]]