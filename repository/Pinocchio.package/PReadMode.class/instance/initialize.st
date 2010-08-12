accessing
initialize
	super initialize.
	c1 := PC1EscapeMode new.
	actions at: 9 put: [ readline tab ].
	actions at: 10 put: [ readline linefeed ].
	actions at: 27 put: [ c1 readCharacter ].
	actions at: 127 put: [ readline deleteLeft ].