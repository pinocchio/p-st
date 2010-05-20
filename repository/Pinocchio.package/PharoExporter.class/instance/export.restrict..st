exporting
export: todo restrict: restrictionSet
	| astExtractor cdumper root |
	cdumper := PCDumper new restrictExportOn: restrictionSet.
	astExtractor := PharoASTExtractor new.
	progress := [ astExtractor progress / 3 ].
	root := astExtractor extract: todo.
	progress := [ cdumper progress * (2 / 3) + (1 / 3) ].
	cdumper export: root