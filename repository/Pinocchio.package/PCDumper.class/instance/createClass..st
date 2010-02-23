convenience
createClass: aPinocchioClass
	| classLayout |
	classLayout := aPinocchioClass pmetaclass layout.
	currentClass := aPinocchioClass pmetaclass.
	self visit: classLayout.
	currentClass := aPinocchioClass.
	stream lf.
	self visit: aPinocchioClass layout.
	(self currentClass isKindOf: PInternalClass)
		ifTrue: [
			self currentClass isPCore ifTrue: [ ^ self ].
			stream << 'Type_Class_set_superclass(' << aPinocchioClass uid << ', (Object)' << aPinocchioClass superclass uid << ');'.
			stream lf.
			^ self ].
	
	stream lf.
	self visit: aPinocchioClass name.
	self putRaw: aPinocchioClass
		with: 'new_Class_withMeta((Object)' ,
					aPinocchioClass superclass uid , ', ' ,
					aPinocchioClass layout uid , ', ' ,
					classLayout uid , ')'.
	stream
		nextPutAll: '((Type_Class)';
		nextPutAll: aPinocchioClass uid;
		nextPutAll: ')->name = (Type_Symbol)';
		nextPutAll: aPinocchioClass name uid;
		nextPutAll: ';'; lf.