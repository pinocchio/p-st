as yet unclassified
from: aString
	| instance |
	instance := self new.
	aString do: [:char|
		((char = Character lf) or: [char = Character cr])
			ifTrue: [ instance addLine ]
			ifFalse: [instance add: char]].
	^ instance.