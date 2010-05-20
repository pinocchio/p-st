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
			[ stream << 'Type_Class_set_superclass(' << aPinocchioClass uid << ', (Type_Class)' << aPinocchioClass superclass uid << ');'; lf.
				aPinocchioClass customLayout ifFalse: [
					stream << aPinocchioClass uid << '->layout = '<< aPinocchioClass layout uid<< ';'; lf ].
				stream << aPinocchioClass pmetaclass uid << '->layout = '<< aPinocchioClass pmetaclass layout uid<< ';'; lf.
				stream << aPinocchioClass uid << '->name = (Type_String)' << aPinocchioClass name uid << ';'; lf.
			 	^ self ].
	self
		putRaw: aPinocchioClass
		with:
			'new_Class_withMeta((Type_Class)' , aPinocchioClass superclass uid , ', ' , classLayout uid , ')'.
	stream << '((Type_Class)' << aPinocchioClass uid << ')->layout = ' << aPinocchioClass layout uid << ';'; lf.
	stream << '((Type_Class)' << aPinocchioClass uid << ')->name = (Type_Symbol)' << aPinocchioClass name uid << ';'; lf