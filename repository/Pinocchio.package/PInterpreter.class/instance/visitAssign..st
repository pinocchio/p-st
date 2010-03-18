interpreting
visitAssign: anAssign
	| value |
	value := anAssign expression accept: self.
	^ anAssign variable assignFor: self to: value