visiting
visitClassReference: aClassReference
	(classReferences includes: aClassReference) ifTrue: [ ^ self].
	aClassReference pclass accept: self.
	classReferences addLast: aClassReference.