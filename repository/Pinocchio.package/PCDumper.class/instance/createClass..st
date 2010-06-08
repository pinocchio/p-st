convenience
createClass: aPinocchioClass
	| classLayout |
	classLayout := aPinocchioClass pmetaclass layout.
	currentClass := aPinocchioClass pmetaclass.
	self visit: classLayout.
	currentClass := aPinocchioClass.
	stream lf.
	self visit: aPinocchioClass name.
	self visit: aPinocchioClass layout.
	(aPinocchioClass isKindOf: PInternalClass)
		ifTrue:
			[ stream << 'Class_set_superclass(' << aPinocchioClass uid << ', (Class)' << aPinocchioClass superclass uid << ');'; lf.
				aPinocchioClass customLayout ifFalse: [
					stream << aPinocchioClass uid << '->layout = '<< aPinocchioClass layout uid<< ';'; lf ].
				stream << aPinocchioClass pmetaclass uid << '->layout = '<< aPinocchioClass pmetaclass layout uid<< ';'; lf.
				stream << aPinocchioClass uid << '->name = (String)' << aPinocchioClass name uid << ';'; lf.
			 	^ self ].
	self
		putRaw: aPinocchioClass
		with:
			'new_Class((Class)' , aPinocchioClass superclass uid , ', ' , classLayout uid , ')'.
	stream << '((Class)' << aPinocchioClass uid << ')->layout = ' << aPinocchioClass layout uid << ';'; lf.
	stream << '((Class)' << aPinocchioClass uid << ')->name = (Symbol)' << aPinocchioClass name uid << ';'; lf