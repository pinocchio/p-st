as yet unclassified
readLine
	| contents |
	contents := super readLine.
	client historyPush: text.
	text := PText new.
	^ contents