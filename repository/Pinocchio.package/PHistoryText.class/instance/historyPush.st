as yet unclassified
historyPush
	| text |
	history atStart ifFalse: [ history value contents = self contents ifTrue: [ ^ text ]].
	
	text := PText new setLines: self getLines.
	history add: text.
	lines := PDoubleLinkedList new.
	^ text.