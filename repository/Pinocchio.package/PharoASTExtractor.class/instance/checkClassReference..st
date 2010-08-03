convenience
checkClassReference: classReference
	classReference ifNil: [ self shouldNotHappen ].
	classReference pclass ifNil: [ self shouldNotHappen ].
	classReference package ifNil: [ self shouldNotHappen ].
	classReference referenceName ifNil: [ self shouldNotHappen ]