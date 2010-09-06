inspecting
inspectChildrenOn: inspector
	runs do: [ :run |
		inspector
			child: run
			value: run ]