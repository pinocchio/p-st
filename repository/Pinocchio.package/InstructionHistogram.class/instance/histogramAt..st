as yet unclassified
histogramAt: key
	| histogram |
	self at: key ifPresent: [ :value| ^ value ].
	histogram :=  self at: key put: InstructionHistogram new.
	histogram depth: self depth + 1.
	histogram parent: self.
	histogram name: key.
	^ histogram.