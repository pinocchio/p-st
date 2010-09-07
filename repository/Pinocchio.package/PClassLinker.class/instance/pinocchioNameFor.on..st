as yet unclassified
pinocchioNameFor: aPClass on: s
	| name |
	name := aPClass name.
	name withIndexDo: [ :letter :index |
		letter isUppercase ifFalse: [
			index = 1 ifTrue: [ ^ s << name ].
			^ s << (name copyFrom: index - 1 to: name size) ]].
	s << name