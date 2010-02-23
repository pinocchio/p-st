exporting
exportClasses
	self clearDirectory: self sourcePath, '/test/lib/'.
	self clearDirectory: self sourcePath, '/test/lib/test/'.
	exporter export: self todo.
	self todo do: [:sclass | 
		PharoTestClassExporter export: (exporter classASTs at: sclass name)
	]