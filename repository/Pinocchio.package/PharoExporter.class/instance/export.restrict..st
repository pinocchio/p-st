exporting
export: todo restrict: restrictionSet
	| astExtractor cdumper root |
	restrictionSet isEmpty ifTrue: [ P reset. ].
	cdumper := PCDumper new restrictExportOn: restrictionSet.
	cdumper idBox: IDBox new.
	astExtractor := PharoASTExtractor new.
	progress := [ astExtractor progress / 3 ].
	root := astExtractor extract: todo.
	progress := [ cdumper progress * (2 / 3) + (1 / 3) ].
	cdumper export: root