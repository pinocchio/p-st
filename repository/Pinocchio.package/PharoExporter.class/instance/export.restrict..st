exporting
export: todo restrict: restrictionSet
	| astExtractor cdumper root astProgressRatio |
	restrictionSet isEmpty ifTrue: [ P reset. ].
	cdumper := PCDumper new restrictExportOn: restrictionSet.
	cdumper idBox: IDBox new.
	astExtractor := PharoASTExtractor new.
	astProgressRatio := 40.0.
	progress := [ astExtractor progress / astProgressRatio ].
	root := astExtractor extract: todo.
	progress := [ cdumper progress * ((astProgressRatio-1) / astProgressRatio) + (1 / astProgressRatio) ].
	cdumper export: root