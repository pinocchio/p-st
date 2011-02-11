as yet unclassified
down
	| nextText |
	text onLastLine ifFalse: [ ^ super down ].
	nextText := client historyNext.
	nextText = text ifTrue: [ ^ self ].
	nextText ifNotNilDo: [ :txt| self text: txt].