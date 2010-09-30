as yet unclassified
pinocchioNameFor: aClass on: s
	| name |
	name := aClass name.
	name withIndexDo: [ :letter :index |
		letter isUppercase ifFalse: [
			index = 1 ifTrue: [ ^ s << name ].
			^ s << (name copyFrom: index - 1 to: name size) ]].
	s << name