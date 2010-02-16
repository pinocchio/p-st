*Pinocchio
unreferencedKeys
	"TextConstants unreferencedKeys"
	<preventExport>
	| n |
	^'Scanning for references . . .' 
		displayProgressAt: Sensor cursorPoint
		from: 0
		to: self size
		during: 
			[:bar | 
			n := 0.
			self keys select: 
					[:key | 
					bar value: (n := n + 1).
					(self systemNavigation allCallsOn: (self associationAt: key)) isEmpty]]