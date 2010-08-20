initialize-release
initializeSS3: actions
	actions at: $p put: [ handler keypad0 ].
	actions at: $q put: [ handler keypad1 ].
	actions at: $r put: [ handler keypad2 ].
	actions at: $s put: [ handler keypad3 ].
	actions at: $t put: [ handler keypad4 ].
	actions at: $u put: [ handler keypad5 ].
	actions at: $v put: [ handler keypad6 ].
	actions at: $w put: [ handler keypad7 ].
	actions at: $x put: [ handler keypad8 ].
	actions at: $y put: [ handler keypad9 ].
	
	actions at: $m put: [ handler keypadMinus ].
	actions at: $l put: [ handler keypadBacktick ].
	actions at: $n put: [ handler keypadDot ].
	actions at: $M put: [ handler keypadEnter ].
	
	actions at: $P put: [ handler f1 ].
	actions at: $Q put: [ handler f2 ].
	actions at: $R put: [ handler f3 ].
	actions at: $S put: [ handler f4 ].
	actions at: $H put: [ handler home ].
	actions at: $F put: [ handler end ].