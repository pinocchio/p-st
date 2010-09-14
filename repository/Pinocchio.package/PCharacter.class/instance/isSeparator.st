comparing
isSeparator
	"Answer whether the receiver is one of the separator characters--space, 
	cr, tab, line feed, or form feed."
	| v |
	v := self charCode. 
	v = 32 ifTrue: [^true].	"space"
	v = 13 ifTrue: [^true].	"cr"
	v = 9 ifTrue: [^true].	"tab"
	v = 10 ifTrue: [^true].	"line feed"
	v = 12 ifTrue: [^true].	"form feed"
	^false