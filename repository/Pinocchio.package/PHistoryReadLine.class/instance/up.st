as yet unclassified
up
	| prev |
	text onFirstLine ifFalse: [ ^ super up ].
	client historyPrevious ifNotNilDo: [ :txt| self text: txt].