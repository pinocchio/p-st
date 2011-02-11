as yet unclassified
down
	text onLastLine ifFalse: [ ^ super down ].
	client historyNext ifNotNilDo: [ :txt| self text: txt].