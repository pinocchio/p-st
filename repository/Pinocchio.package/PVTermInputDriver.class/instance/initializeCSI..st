initialize-release
initializeCSI: actions
	actions at: $A put: [ handler up    ].
	actions at: $B put: [ handler down  ].
	actions at: $C put: [ handler right ].
	actions at: $D put: [ handler left  ].
	actions at: $E put: [ handler here  ].
	
	actions at: 1 put: [ handler find   ].
	actions at: 2 put: [ handler insert ].
	actions at: 3 put: [ handler remove ].
	actions at: 4 put: [ handler select ].
	actions at: 5 put: [ handler previousScreen ].
	actions at: 6 put: [ handler nextScreen ].
	
	actions at: 15 put: [ handler f5 ].
	actions at: 17 put: [ handler f6 ].
	actions at: 18 put: [ handler f7 ].
	actions at: 19 put: [ handler f8 ].
	actions at: 20 put: [ handler f9 ].
	actions at: 21 put: [ handler f10 ].
	actions at: 23 put: [ handler f11 ].
	actions at: 24 put: [ handler f12 ].
	actions at: 25 put: [ handler f13 ].
	actions at: 26 put: [ handler f14 ].
	actions at: 28 put: [ handler f15 ].
	actions at: 29 put: [ handler f16 ].
	actions at: 31 put: [ handler f17 ].
	actions at: 32 put: [ handler f18 ].
	actions at: 33 put: [ handler f19 ].
	actions at: 34 put: [ handler f20 ].
	
	actions at: $[ put: [ self readCSI ].