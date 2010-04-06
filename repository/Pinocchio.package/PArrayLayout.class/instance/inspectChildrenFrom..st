inspecting
inspectChildrenFrom: anObject
	| children |
	children := super inspectChildrenFrom: anObject.
	1 to: anObject size do: [ :index | children add: index@(anObject at: index) ].
	^ children