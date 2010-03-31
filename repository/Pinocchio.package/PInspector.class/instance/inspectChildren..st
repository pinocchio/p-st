private
inspectChildren: children
	children do: [ :child | self inspectChild: child ]