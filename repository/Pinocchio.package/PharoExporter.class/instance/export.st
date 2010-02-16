exporting
export
	| astExtractor |
	astExtractor := PharoASTExtractor new.
	progress := [astExtractor progress / 3].
	root := 	astExtractor extract: self todo.
	classASTs := astExtractor classASTs.
	
	progress := [cdumper progress * (2/3) + (1/3)].
	cdumper export: root.