inspecting
inspectChildrenOn: inspector
	| index |
	index := 0.
	self do: [ :value |
		inspector
			child: (index := index + 1)
			value: [ value ]]