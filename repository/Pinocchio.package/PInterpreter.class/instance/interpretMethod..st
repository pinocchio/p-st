sending
interpretMethod: method
	| pc |
	pc := 0.
	[ (pc := pc + 1) < method size ] whileTrue: [ (method at: pc) accept: self ].
	^ (method at: pc) accept: self.