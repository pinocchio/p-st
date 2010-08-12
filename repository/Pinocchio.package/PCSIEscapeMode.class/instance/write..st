as yet unclassified
write: code
	code isNumber ifTrue: [ self shouldNeverHappen ].
	readline csiEscape.
	readline << code asString.