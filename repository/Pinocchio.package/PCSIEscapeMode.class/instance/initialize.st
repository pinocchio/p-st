as yet unclassified
initialize
	super initialize.
	actions at: $A put: [ readline up ].
	actions at: $B put: [ readline down ].
	actions at: $C put: [ readline right ].
	actions at: $D put: [ readline left ].
	actions at: $E put: [ readline here ].
	
	actions at: 1 put: [ readline find ].
	actions at: 2 put: [ readline insert ].
	actions at: 3 put: [ readline remove ].
	actions at: 4 put: [ readline select ].
	actions at: 5 put: [ readline previousScreen ].
	actions at: 6 put: [ readline nextScreen ].
	
	actions at: 15 put: [ readline f5 ].
	actions at: 17 put: [ readline f6 ].
	actions at: 18 put: [ readline f7 ].
	actions at: 19 put: [ readline f8 ].
	actions at: 20 put: [ readline f9 ].
	actions at: 21 put: [ readline f10 ].
	actions at: 23 put: [ readline f11 ].
	actions at: 24 put: [ readline f12 ].
	actions at: 25 put: [ readline f13 ].
	actions at: 26 put: [ readline f14 ].
	actions at: 28 put: [ readline f15 ].
	actions at: 29 put: [ readline f16 ].
	actions at: 31 put: [ readline f17 ].
	actions at: 32 put: [ readline f18 ].
	actions at: 33 put: [ readline f19 ].
	actions at: 34 put: [ readline f20 ].