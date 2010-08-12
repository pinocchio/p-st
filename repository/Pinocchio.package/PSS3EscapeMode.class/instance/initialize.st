initialize-release
initialize
	super initialize.
	actions at: $p put: [ readline keypad0 ].
	actions at: $q put: [ readline keypad1 ].
	actions at: $r put: [ readline keypad2 ].
	actions at: $s put: [ readline keypad3 ].
	actions at: $t put: [ readline keypad4 ].
	actions at: $u put: [ readline keypad5 ].
	actions at: $v put: [ readline keypad6 ].
	actions at: $w put: [ readline keypad7 ].
	actions at: $x put: [ readline keypad8 ].
	actions at: $y put: [ readline keypad9 ].
	
	actions at: $m put: [ readline keypadMinus ].
	actions at: $l put: [ readline keypadBacktick ].
	actions at: $n put: [ readline keypadDot ].
	actions at: $M put: [ readline keypadEnter ].
	
	actions at: $P put: [ readline f1 ].
	actions at: $Q put: [ readline f2 ].
	actions at: $R put: [ readline f3 ].
	actions at: $S put: [ readline f4 ].
	actions at: $H put: [ readline home ].
	actions at: $F put: [ readline end ].