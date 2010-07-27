as yet unclassified
with: source
	| dumper |
	dumper := super new.
	dumper idBox: source idBox.
	dumper globals addAll: source globals.
	^ dumper