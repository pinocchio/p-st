as yet unclassified
new: source
	| dumper |
	dumper := super new.
	dumper globals addAll: source globals.
	^ dumper