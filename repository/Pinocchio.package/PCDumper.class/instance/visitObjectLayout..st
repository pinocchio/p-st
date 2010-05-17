visitor
visitObjectLayout: aPObjectLayout
	| element |
	aPObjectLayout size = 0
		ifTrue: [ ^ aPObjectLayout uid: 'empty_object_layout' ].
	1 to: aPObjectLayout size do: [ :index | self visit: (aPObjectLayout at: index) ].
	(self currentClass isKindOf: PInternalClass)
		ifTrue: [ ^ self ].
	(self currentClass isKindOf: PInternalMetaclass)
		ifTrue: [ ^ self ].
	self
		putRaw: aPObjectLayout
		with: 'create_layout_with_vars(Type_ObjectLayout_Class, ' , aPObjectLayout size asString , ')'.
	aPObjectLayout
		withIndexDo:
			[ :each :index | 
			stream
				nextPutAll: '((Collection_Array)';
				nextPutAll: aPObjectLayout uid;
				nextPutAll: ')->values[' , (index - 1) asString , '] = ';
				nextPutAll: each uid;
				nextPutAll: '; // ';
				nextPutAll: each name;
				nextPutAll: ' ';
				lf ].
	globals add: aPObjectLayout