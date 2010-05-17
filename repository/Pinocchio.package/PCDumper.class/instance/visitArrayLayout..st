visitor
visitArrayLayout: aPArrayLayout
	| element |
	aPArrayLayout size = 0
		ifTrue: [ ^ aPArrayLayout uid: 'empty_array_layout' ].
	1 to: aPArrayLayout size do: [ :index | self visit: (aPArrayLayout at: index) ].
	(self currentClass isKindOf: PInternalClass)
		ifTrue: [ ^ self ].
	(self currentClass isKindOf: PInternalMetaclass)
		ifTrue: [ ^ self ].
	self putRaw: aPArrayLayout with: 'create_layout_with_vars(Collection_ArrayLayout_Class, ' , aPArrayLayout size asString , ')'.
	aPArrayLayout
		withIndexDo:
			[ :each :index | 
			stream
				nextPutAll: '((Collection_Array)';
				nextPutAll: aPArrayLayout uid;
				nextPutAll: ')->values[' , (index - 1) asString , '] = ';
				nextPutAll: each uid;
				nextPutAll: ';';
				lf ].
	globals add: aPArrayLayout