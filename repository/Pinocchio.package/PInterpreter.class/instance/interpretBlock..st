application
interpretBlock: block
	| pc |
	pc := 0.
	[ (pc := pc + 1) < block size ] whileTrue: [ (block at: pc) accept: self ].
	^ (block at: pc) accept: self.