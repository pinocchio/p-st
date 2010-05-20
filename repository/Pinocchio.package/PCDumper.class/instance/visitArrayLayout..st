visitor
visitArrayLayout: aPArrayLayout
	| element |
	aPArrayLayout size = 0
		ifTrue: [ ^ aPArrayLayout uid: 'empty_array_layout' ].
	1 to: aPArrayLayout size do: [ :index | self visit: (aPArrayLayout at: index) ].
	self currentClass customLayout ifTrue: [ ^ self ].
	self putRaw: aPArrayLayout with: 'create_layout_with_vars(Type_ArrayLayout_Class, ' , aPArrayLayout size asString , ')'.
	aPArrayLayout withIndexDo: [ :each :index | 
			stream << '((Collection_Array)' << aPArrayLayout uid << ')->values[' << (index - 1) asString << '] = ' << each uid <<';'; lf ].
	globals add: aPArrayLayout