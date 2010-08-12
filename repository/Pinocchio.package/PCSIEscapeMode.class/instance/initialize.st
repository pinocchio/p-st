as yet unclassified
initialize
	super initialize.
	memo := 0.
	actions at: $A put: #'up'.
	actions at: $B put: #'down'.
	actions at: $C put: #'right'.
	actions at: $D put: #'left'.
	actions at: $E put: #'here'.
	
	actions at: 1 put: #'find'.
	actions at: 2 put: #'insert'.
	actions at: 3 put: #'remove'.
	actions at: 4 put: #'select'.
	actions at: 5 put: #'previousScreen'.
	actions at: 6 put: #'nextScreen'.
	
	actions at: 15 put: #'f5'.
	actions at: 17 put: #'f6'.
	actions at: 18 put: #'f7'.
	actions at: 19 put: #'f8'.
	actions at: 20 put: #'f9'.
	actions at: 21 put: #'f10'.
	actions at: 23 put: #'f11'.
	actions at: 24 put: #'f12'.
	actions at: 25 put: #'f13'.
	actions at: 26 put: #'f14'.
	actions at: 28 put: #'f15'.
	actions at: 29 put: #'f16'.
	actions at: 31 put: #'f17'.
	actions at: 32 put: #'f18'.
	actions at: 33 put: #'f19'.
	actions at: 34 put: #'f20'.
	

	
