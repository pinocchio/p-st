visiting
currentClassName
	| id |
	id := self rawClassIdFor: currentClass.
	(currentClass isKindOf: PMetaclass) ifFalse: [ ^ id ].
	^ id, '_class'