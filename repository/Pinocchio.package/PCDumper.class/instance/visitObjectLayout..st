visitor
visitObjectLayout: aPObjectLayout
	| element |
	aPObjectLayout size = 0
		ifTrue: [ ^ aPObjectLayout uid: 'empty_object_layout' ].
	1 to: aPObjectLayout size do: [ :index | self visit: (aPObjectLayout at: index) asPObject ].
	self currentClass customLayout ifTrue: [ ^ self ].
	self
		putRaw: aPObjectLayout
		with: 'create_layout_with_vars(Type_ObjectLayout_Class, ' , aPObjectLayout size asString , ')'.
	aPObjectLayout
		withIndexDo:
			[ :each :index | 
			stream
				<< '((Collection_Array)' << aPObjectLayout uid << ')->values[' << (index - 1) asString << '] = ' << each asPObject uid
				<< '; // ' << each name << ' '; lf ].
	globals add: aPObjectLayout