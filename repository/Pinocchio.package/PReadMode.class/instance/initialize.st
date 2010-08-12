accessing
initialize
	super initialize.
	actions at: 9 put: #'tab'.
	actions at: 10 put: #'linefeed'.
	actions at: 27 put: #'escapeMode'.
	actions at: 127 put: #'deleteLeft'.