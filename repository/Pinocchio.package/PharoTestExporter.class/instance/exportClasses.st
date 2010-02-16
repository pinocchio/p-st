exporting
exportClasses
	self clearDirectory: self sourcePath, '/test/lib'.
	exporter export: self todo.
	self todo
		do: [:t1 | PharoTestClassExporter
				export: (exporter classASTs at: t1 name)]