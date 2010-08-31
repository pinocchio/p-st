inspecting
inspectChildrenFrom: anObject on: inspector
	super inspectChildrenFrom: anObject on: inspector.
	1 to: anObject size do: [ :index |
		inspector child: index value: [ anObject at: index ]]