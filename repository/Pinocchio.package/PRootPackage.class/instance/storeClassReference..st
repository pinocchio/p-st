exporting
storeClassReference: aClassReference
	self at: aClassReference referenceName ifPresent: [ :el | self error: 'Reference already exists!' ].
	self at: aClassReference referenceName put: aClassReference.
	aClassReference package: self.