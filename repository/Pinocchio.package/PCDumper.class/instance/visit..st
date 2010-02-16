visitor
visit: aPinocchioObject
	(aPinocchioObject isKindOf: PObject) ifFalse: [
		self error: 'Expected PObject but got ', aPinocchioObject class name.
	].
	(self hasVisited: aPinocchioObject) 
		ifTrue: [ ^ aPinocchioObject ].
	^ aPinocchioObject accept: self.