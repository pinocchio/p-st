convenience
exportClass: aClass 
	currentExporter := PharoExporter export: (OrderedCollection with: aClass).
	currentRoot := currentExporter root.
	currentClass := currentExporter classASTs at: aClass name.
	^ currentClass