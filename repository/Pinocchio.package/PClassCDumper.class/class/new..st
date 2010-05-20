as yet unclassified
new: source
	| dumper |
	dumper := super new.
	dumper visitedNodes addAll: source visitedNodes.
	^ dumper