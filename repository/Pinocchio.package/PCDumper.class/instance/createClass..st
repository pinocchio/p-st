convenience
createClass: aPinocchioClass
	| classLayout |
	classLayout := aPinocchioClass pmetaclass layout.
	self visit: classLayout.
	stream cr.
	self visit: aPinocchioClass layout.
	(self currentClass isKindOf: PInternalClass) ifTrue: [ ^ self. ].
	
	stream cr.
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
		nextPutAll: ';'; cr.