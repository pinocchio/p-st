initialize-release
initializeNormal: actions
	actions at: 1 put: [ readline startOfHeading ].
	actions at: 2 put: [ readline startOfText ].
	actions at: 3 put: [ readline endOfText ].
	actions at: 4 put: [ readline endOfTransmission ].
	actions at: 5 put: [ readline enquiry ].
	actions at: 6 put: [ readline acknowledge ].
	actions at: 7 put: [ readline bell ].
	actions at: 8 put: [ readline backspace ].
	actions at: 9 put: [ readline tab ].
	actions at: 10 put: [ readline lf ].
	actions at: 11 put: [ readline verticalTab ].
	actions at: 12 put: [ readline formfeed ].
	actions at: 13 put: [ readline carriageReturn ].
	actions at: 14 put: [ readline shiftOut ].
	actions at: 15 put: [ readline shiftIn ].
	actions at: 27 put: [ self readC1 ].
	actions at: 127 put: [ readline delete ].