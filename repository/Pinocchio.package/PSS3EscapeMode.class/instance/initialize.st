initialize-release
initialize
	super initialize.
	actions at: $p put: #'keypad0'.
	actions at: $q put: #'keypad1'.
	actions at: $r put: #'keypad2'.
	actions at: $s put: #'keypad3'.
	actions at: $t put: #'keypad4'.
	actions at: $u put: #'keypad5'.
	actions at: $v put: #'keypad6'.
	actions at: $w put: #'keypad7'.
	actions at: $x put: #'keypad8'.
	actions at: $y put: #'keypad9'.
	
	actions at: $m put: #'keypadMinus'.
	actions at: $l put: #'keypadBacktick'.
	actions at: $n put: #'keypadDot'.
	actions at: $M put: #'keypadEnter'.
	
	actions at: $P put: #'f1'.
	actions at: $Q put: #'f2'.
	actions at: $R put: #'f3'.
	actions at: $S put: #'f4'.